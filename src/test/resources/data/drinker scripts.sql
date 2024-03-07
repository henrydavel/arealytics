--**********  script to confirm json data for beers.json ********** 
select it.name, si.codebar,t.type, it."alcoholUnits" 
from item_type it
join stock_item si on si.id = it."FK_type_id" 
join "type"  t on t.id = it."FK_type_id" ;


--**********  script to confirm json data for bars.json ********** 
--select  b."barname", it."name", s.price --,  it.id as itId  --si.id as siId, s."FK_bar_stock_item_id",
select it."name", s.price --,  it.id as itId  --si.id as siId, s."FK_bar_stock_item_id",
from stock s
	join stock_item si on si.id=s."FK_bar_stock_item_id" 
	join bar b on b.id = s."FK_bar_id" 
	join item_type it on it.id = si."FK_item_type" 
 where b."barname" = 'Cubana'
order by b."barname";	


--**********  script to confirm json data for visit-events.json ********** 
select  b."barname",it."name", s.price  --,  --it.id as itId  --si.id as siId, s."FK_bar_stock_item_id",
from stock s
	join stock_item si on si.id=s."FK_bar_stock_item_id" 
	join bar b on b.id = s."FK_bar_id" 
	join item_type it on it.id = si."FK_item_type" 
order by b."barname";	

select * -- delete 
from  bar b where id =45;
	


--****---******  miscelaneous --****---******
select * --delete 
from visit_event where "uuid"='8c1e6d66-ae7d-434d-ba2e-85c829041bc3' ; --='Penfolds' --1003
select * --delete 
from visit_event where bar_name='SugaCane';
 