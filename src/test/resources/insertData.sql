
--insert type
INSERT INTO public."type" (id, "type") VALUES(0, 'beer');
INSERT INTO public."type" (id, "type") VALUES(1, 'whiskey');
INSERT INTO public."type" (id, "type") VALUES(2, 'tequila');

--insert drinkType
--delete from table "drinkType"
--select * from "drinkType" dt ;
INSERT INTO public.item_type (id, "name", "FK_type_id", "alcoholUnits")
VALUES(nextval('item_type_id_seq'::regclass), 'Corona', (select id from public."type" where "type"='beer'), 1.2);
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Castle Lite',  (select id from public."type" where "type"='beer') ,  1.2   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Jose Cuervo',  (select id from public."type" where "type"='tequila'),   1.4   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Buchanan''s',  (select id from public."type" where "type"='whiskey'),   1.4   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Stella Artois',   (select id from public."type" where "type"='beer'),   1.2   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Don Julio',   (select id from public."type" where "type"='tequila'),   1.4   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Red Label',  (select id from public."type" where "type"='whiskey'),   1.4   );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Black Label',   (select id from public."type" where "type"='beer'),   1.2  );
INSERT INTO public."item_type" (id,"name", "FK_type_id", "alcoholUnits")
VALUES (nextval('"item_type_id_seq"'::regclass),'Tiger''s Milk Lager',  (select id from public."type" where "type"='beer'),   1.2  );


--insert public.item
--delete from table "public.item
--select * from "public.item  dt ;

INSERT INTO public.item (id, "FK_item_Type_id") VALUES(nextval('item_id_seq'::regclass), 0);
