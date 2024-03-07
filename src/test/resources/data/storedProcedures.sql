/*  ########   insert_type  ########*/
create or replace
procedure insert_Type(
"type" varchar
)
language plpgsql
as $$
begin

insert
	into
	public."type" (id,
	"type")
values (nextval('"item_type_id_seq"'::regclass),
"type");

commit;
end;
$$;

/*  ########  insert item_type  ######## */
create or replace procedure insert_itemType(
itemName varchar,
kind varchar,
alcoholUnits float
)
language plpgsql
as $$
begin
INSERT INTO public.item_type (id, name, "FK_type_id", "alcoholUnits")
VALUES(	nextval('item_type_id_seq'::regclass),
itemName,
(select id from public."type" t where t."type"=kind),
alcoholUnits);

commit;
end;$$;

/*  ########  insert stock_item ######## */
create or replace procedure insert_stock_item(
itemName varchar,
codeBar integer
)
language plpgsql
as $$
begin

INSERT INTO public.stock_item
VALUES (	nextval('"stock_item_id_seq"'::regclass),
(select id from "item_type" where "name" = itemName),
codeBar );
commit;
end;$$;

/*  ########  insert into bar  insert_bar ######## */
create or replace
procedure insert_bar(barName varchar,address varchar)
language plpgsql
as $$
begin

insert into public.bar (id,barName,address )
	values(	nextval('bar_id_seq'::regclass),
			barName,
			address);
end;
$$;


/* ######## INSERT INTO public.stock   insert_stock ######## */
/*used to populate DB*/
create or replace function insert_stock(bar_name varchar, jsonData JSON) returns void language plpgsql as $$
begin
insert into stock("FK_bar_id", "FK_bar_stock_item_id", price)
select
	(select id from bar b where b."barname" =bar_name),
	(select id from stock_item si where si."FK_item_type" =(select id from "item_type" where "name" = ((d->>'name')::varchar))),
	((d->>'price')::float)

from json_array_elements(jsonData) as d;
return;
end $$;

/******* working and should go over for java sake's********/
create or replace procedure insert_bar_stock(bar_name varchar,beverage varchar,price float )
language plpgsql as $$
begin
	insert into public.stock (id,price,"FK_bar_stock_item_id","FK_bar_id")
	values( 
		nextval('stock_id_seq'::regclass),
		price,
		( select id from stock_item si where si."FK_item_type" =(select id from "item_type" where "name" = beverage)), 
		(select id  from bar b where b."barname" = bar_name));
end $$;


/*######## populate visit_event table */
create or replace function insert_visit_event(data JSON) returns void language plpgsql as $$
begin
INSERT INTO visit_event("uuid", bar_name, drinks, beverage, happy_hour, visited)
select
	(d->> 'uuid')::varchar,
	(d->> 'bar_name')::varchar,
	(d->> 'drinks')::int,
	(d->> 'beverage')::varchar,
	(d->> 'happy_hour')::bool,
	(d->> 'visited')::varchar
	from json_array_elements(data) as d;
return;
end $$;


/*######## retrieve bars with stock */
create or replace function retrieve_bars_and_stock(bar_name varchar)
RETURNS TABLE ("name"   varchar,
price float)
LANGUAGE plpgsql AS
$func$
BEGIN
RETURN QUERY

select it."name", s.price --,  it.id as itId  --si.id as siId, s."FK_bar_stock_item_id",
from stock s
join stock_item si on si.id=s."FK_bar_stock_item_id"
join bar b on b.id = s."FK_bar_id"
join item_type it on it.id = si."FK_item_type"
where b."barname" = bar_name
order by b."barname";


end
$func$;

/* ########retrieve bars visited between dates */
create or replace
function retrieve_visited_bars_between_dates(beginDate varchar,
endDate varchar)
returns table (barname varchar,
visited varchar)
language plpgsql as
$func$
begin
return QUERY

select ve.bar_name, ve.visited
from visit_event ve
WHERE ve.visited  BETWEEN beginDate and endDate;

END
$func$;



















