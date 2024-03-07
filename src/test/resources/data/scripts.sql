select * from "type" t ;
select * from item_type it ;
select * from Stock;
select * from stock_item;
select * from bar;

delete from type where type = 'Wine';
delete from item_type where "name"= 'Blackbeard';
delete from bar;

INSERT INTO public.stock (id, price, "FK_bar_stock_item_id", "FK_bar_id") 
VALUES(nextval('stock_id_seq'::regclass),
	(select id from "item_type" where "name" = 'Castle Lite'),
	(select id from "bar" where "barName"='Tiger''s Milk'),
	20.0);
--item_type
CALL public.insert_itemtype('Blackbeard', 'beer', 1.2);
select * from item_type it; 
--stock_item
CALL public.insert_stock_item('Blackbeard', 123123);
select * from stock_item;
--stock
CALL public.insert_stock('Blackbeard', 123123);
select * from test;

 delete from stock;

select si.id as siId, s."FK_bar_stock_item_id", b."barName",it."name", s.price,  it.id as itId  
from stock s
	join stock_item si on si.id=s."FK_bar_stock_item_id" 
	join bar b on b.id = s."FK_bar_id" 
	join item_type it on it.id = si."FK_item_type" 
where s."FK_bar_id" =(select id from bar b where b."barName" ='Cubana')


 (FK_bar_stock_item_id)=(11) is not present in table "stock_item".
 
 select * from item_type it;

select id from stock_item si where si."FK_item_type" =(select id from item_type it where "name" ='Castle Lite')