--insert type
--CALL public.insert_type(:type)
CALL public.insert_type('beer');
CALL public.insert_type('whiskey');
CALL public.insert_type('tequila');

--insert drinkType
--CALL public.insert_itemtype(:name, :kind, :alcoholUnits);
CALL public.insert_itemType( 'Corona', 'beer', 1.2);
CALL public.insert_itemType('Castle Lite','beer',1.2 );
CALL public.insert_itemType('Jose Cuervo', 'tequila', 1.4 );
CALL public.insert_itemType('Buchanan''s', 'whiskey', 1.4);
CALL public.insert_itemType('Stella Artois', 'beer', 1.2);
CALL public.insert_itemType('Don Julio', 'tequila', 1.4);
CALL public.insert_itemType('Red Label', 'whiskey', 1.4);
CALL public.insert_itemType('Black Label', 'beer', 1.2);
CALL public.insert_itemType('Tiger''s Milk Lager', 'beer',1.2);

----populate stock_item
CALL public.insert_stock_item('Corona',65473829);
CALL public.insert_stock_item('Castle Lite',76531005 );	
CALL public.insert_stock_item('Jose Cuervo',24199034 );	
CALL public.insert_stock_item('Buchanan''s',0054384099 );
CALL public.insert_stock_item('Stella Artois',0362882147 );
CALL public.insert_stock_item('Don Julio',24199034 );	
CALL public.insert_stock_item('Red Label',452930015 );	
CALL public.insert_stock_item('Black Label',1603638688 );


--populate bar;
CALL public.insert_bar( 'Tiger''s Milk', '55 Kloof St, Gardens, Cape Town, 8001');
CALL public.insert_bar('Cubana', 'Centre, 9 Somerset Rd, Green Point, Cape Town, 8001');
CALL public.insert_bar( 'Jerry''s', '5 Park Rd, Gardens, Cape Town, 8001');
CALL public.insert_bar( 'Fat Cactus', '5 Park Road, Gardens, Cape Town, 8001');
CALL public.insert_bar( 'Tequila Jack', '123 Park Road, Gardens, Cape Town, 8001');

select * from item_type ;
select * from stock_item si where si."FK_item_type"
select id from stock_item si where si."FK_item_type" =(select id from "item_type" where "name" = 'Castle Lite');
delete from stock;
-- populate stock for Bar
select insert_stock('Cubana','[{ "name": "Castle Lite", "price": 23.25 }, { "name": "Corona", "price": 45.0 },{ "name": "Jose Cuervo", "price": 38.10 },  { "name": "Stella Artois", "price": 35.0 },{ "name": "Don Julio", "price": 52.0 }, { "name": "Red Label", "price": 38.50 }]');
select insert_stock('Tiger''s Milk','[{ "name": "Castle Lite", "price": 20.0 },{ "name": "Jose Cuervo", "price": 40.0 },{ "name": "Tiger''s Milk Lager", "price": 25.0 },{ "name": "Don Julio", "price": 50.0 },{ "name": "Red Label", "price": 35.50 }]');
select insert_stock('Yours Truly','[{ "name": "Castle Lite", "price": 30.0 },{ "name": "Stella Artois", "price": 40.0 },{ "name": "Don Julio", "price": 52.0 },{ "name": "Red Label", "price": 50.0 }]');
select insert_stock('Jerry''s','[{ "name": "Corona", "price": 30.0 }, { "name": "Castle Lite", "price": 25.0 }, { "name": "Jose Cuervo", "price": 40.50 }, { "name": "Stella Artois", "price": 38.50 },{ "name": "Don Julio", "price": 45.0 },{ "name": "Black Label", "price": 35.0 }]');
select insert_stock('Fat Cactus','[{ "name": "Corona", "price": 30.0 },{ "name": "Castle Lite", "price": 25.0 },{ "name": "Jose Cuervo", "price": 40.50 },{ "name": "Buchanan''s", "price": 38.0 },{ "name": "Stella Artois", "price": 35.0 }, { "name": "Don Julio", "price": 41.0 },{ "name": "Red Label", "price": 46.0 },{ "name": "Black Label", "price": 35.0 }]');
select insert_stock('Tequila Jack','[{ "name": "Jose Cuervo", "price": 30.0 },{ "name": "Don Julio", "price": 21.0 }]');


select *from bar;

--populate visit_events
SELECT insert_visit_event('[
  {
    "uuid": "b7fa5487-831b-445e-a3ec-b08a2b2f9f15",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-04-19"
  },
  {
    "uuid": "76058cf8-8f01-461d-ab3b-6407687c58a8",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-05-22"
  },
  {
    "uuid": "768f3858-a418-44c0-8274-df2db9b8e847",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-12-20"
  },
  {
    "uuid": "ee573646-e57b-4dce-92f5-83951c595328",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-06-23"
  },
  {
    "uuid": "6fc4944c-de49-43be-afb0-df2cefed8e54",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-01-19"
  },
  {
    "uuid": "835b464d-061c-42b7-a4a2-019bbeefd422",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-09-29"
  },
  {
    "uuid": "f3c0056e-21de-44ca-8438-0bbe4a27e8fd",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-03-08"
  },
  {
    "uuid": "dff159aa-ab41-4a57-816c-047d8153c3ed",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-09-15"
  },
  {
    "uuid": "0818be6f-1fc2-4377-8bb6-ead832be8e80",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-30"
  },
  {
    "uuid": "63cfb032-6019-4665-bde0-c3513651f0d2",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-06"
  },
  {
    "uuid": "1d41d737-c697-4a14-a24d-243b4e528164",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-06-07"
  },
  {
    "uuid": "426be391-e850-4711-9ee6-9fa7aab0b0a4",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-09-10"
  },
  {
    "uuid": "9c9950fe-83a5-417e-aa5b-a1dbfe0dde70",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-02-17"
  },
  {
    "uuid": "4d1ffc44-4117-43f5-8d4c-d6ad5c46893d",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-02-25"
  },
  {
    "uuid": "20d07789-c045-4c96-81e6-4980077704d4",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-07-06"
  },
  {
    "uuid": "7048d290-66cf-4995-923b-b2b7d222317f",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-03-04"
  },
  {
    "uuid": "b40f2124-e48b-40cc-8e58-b6cf3ea18221",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-02-20"
  },
  {
    "uuid": "6e9c1480-1a1a-4631-a080-967be8c42a0c",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-12-29"
  },
  {
    "uuid": "0c3f97dc-9eb2-41b8-9abb-2d5fc264f7bf",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-15"
  },
  {
    "uuid": "0774dab7-500f-45ae-8fd0-eb8b538b9ecf",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-02-04"
  },
  {
    "uuid": "e4bab6f2-2c61-4737-b8df-53798c5cf5a1",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-18"
  },
  {
    "uuid": "1bcb61ec-f0bd-4067-a676-aa497ae8c676",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-06-10"
  },
  {
    "uuid": "bba831e4-55db-4f5e-aa0f-26fa04f71bff",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-04-18"
  },
  {
    "uuid": "24c6a5d1-7ba6-46d9-ac37-927d804ab4f2",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-06-26"
  },
  {
    "uuid": "89826c41-4921-4474-829d-1fcb011d6293",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-04-21"
  },
  {
    "uuid": "2f9284f7-5926-44a0-9016-de46a6c17d10",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-14"
  },
  {
    "uuid": "b4dd3cb7-2610-44f0-ace2-fa53188edc43",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-03-13"
  },
  {
    "uuid": "97df6113-91ab-45fa-8602-9781cf57f3f7",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-12-30"
  },
  {
    "uuid": "638c800b-23cf-4c61-a233-741bba28707b",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-23"
  },
  {
    "uuid": "0cb48b15-6ea3-400c-8782-e1cbc376b3a8",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-12-09"
  },
  {
    "uuid": "7223c8d3-0ada-4f05-912f-36a9e971c8ec",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-02-27"
  },
  {
    "uuid": "0f4e263d-8bc8-4a77-978b-5fe434391979",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-12"
  },
  {
    "uuid": "176b3ffd-0a9c-49da-9eb9-0584cb58c871",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-11-14"
  },
  {
    "uuid": "86b037d2-79c1-45d0-9300-1a11574d123a",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-05-28"
  },
  {
    "uuid": "dd5165c5-2698-4548-b571-4bd30bf49f57",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-03-23"
  },
  {
    "uuid": "cd8e1185-008c-425f-8915-bb3fac319494",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-08-07"
  },
  {
    "uuid": "d1c65b49-825d-45a6-8ba3-d74bdabadaaa",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-12-26"
  },
  {
    "uuid": "acd1df15-e576-42fd-b1ce-7cda278cada1",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-11-07"
  },
  {
    "uuid": "9d5bee66-e4f4-4e44-8dea-e83704f15c14",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-04"
  },
  {
    "uuid": "2c35a1c1-6f2e-4751-9c85-e004e32c03cb",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-12-05"
  },
  {
    "uuid": "9d7c1f14-3ad6-4f1a-a349-c947fff12e8a",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-05"
  },
  {
    "uuid": "59e59f7c-d998-4b12-a3d6-963202cac5ee",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-07-19"
  },
  {
    "uuid": "a75b6620-5596-42f4-9bdc-bad0125c9bed",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-01-24"
  },
  {
    "uuid": "ac17c9a0-4824-4a1a-a899-fe5d26986d4f",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-25"
  },
  {
    "uuid": "6850d037-2c8d-418b-b27b-94151bd7427e",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-09-03"
  },
  {
    "uuid": "54c00e16-3d4c-4007-a093-406ae479da0f",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-12"
  },
  {
    "uuid": "bf15f094-7978-4813-83d4-10d66785b090",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-01-06"
  },
  {
    "uuid": "6dc4b4af-c857-4fd9-96dd-6848a8c611c1",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-11"
  },
  {
    "uuid": "c0a514a3-95d6-41d2-a143-9f91694fa8b7",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-12-05"
  },
  {
    "uuid": "77955da2-f1a9-4715-9495-3800554d73ee",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-09"
  },
  {
    "uuid": "c9cc9442-6f39-4205-8ea2-0404a1d8261b",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-06-21"
  },
  {
    "uuid": "213e77bd-b81a-4608-a399-cc213dec0124",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-09-25"
  },
  {
    "uuid": "ee78a8b4-cf9d-4a04-ba1f-973ffdfc4df1",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-04-30"
  },
  {
    "uuid": "22112bab-42a2-49db-bf3e-eb5508fd1b33",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-07-16"
  },
  {
    "uuid": "a6832519-291e-4438-8c1e-244241ee9bb9",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-02-21"
  },
  {
    "uuid": "3da2d429-94bc-49aa-8bc9-158e7b035471",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-15"
  },
  {
    "uuid": "5b140103-afb5-439d-b96d-1a5072c2c25f",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-06"
  },
  {
    "uuid": "65188112-cf0d-4119-9ab2-2f58df5fd453",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-05-19"
  },
  {
    "uuid": "16face89-5f9c-40ff-b3e4-13fd8696b6c8",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-09"
  },
  {
    "uuid": "a75c00af-bb8d-4fde-af10-fc4f4dce9147",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-07-07"
  },
  {
    "uuid": "5db95303-8067-4ab1-8cb0-b5c63d440e3e",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-05-03"
  },
  {
    "uuid": "b3c7aea2-3617-4022-9ff8-1bf2a96bd543",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-16"
  },
  {
    "uuid": "66c4913b-5a93-428b-b8d9-cc37f56d3f45",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-03-01"
  },
  {
    "uuid": "07fc7955-e825-4afb-a48e-72c6318df7df",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-03-01"
  },
  {
    "uuid": "a8bf463e-c168-49a3-acd2-c5aaa18b59b0",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-11"
  },
  {
    "uuid": "2de101ab-bb8f-41f9-a863-797774f3c90f",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-28"
  },
  {
    "uuid": "5140e946-f6b0-49e4-8f07-17346a766191",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-06-19"
  },
  {
    "uuid": "95fceb53-9bcd-4594-8888-8a11fcbf0542",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-06"
  },
  {
    "uuid": "cbea421f-eb61-4605-ba4c-fce935236737",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-24"
  },
  {
    "uuid": "601f29d5-4e13-4362-ab66-2e7c2d331589",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2019-02-05"
  },
  {
    "uuid": "b283a56d-ab52-45c6-b0f0-a957836c1948",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-11"
  },
  {
    "uuid": "72822099-9120-44c0-a33f-d2df2a5a2117",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-12-05"
  },
  {
    "uuid": "7c73b904-7de0-4dcc-9a78-409e0e27a95f",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-05-07"
  },
  {
    "uuid": "79814687-fb88-4870-8c28-728377fc8093",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-12-13"
  },
  {
    "uuid": "95b0a1b5-84e6-417a-9bb7-0ca5fc1cd7cf",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-02-17"
  },
  {
    "uuid": "0b1c9978-d324-476f-8c41-5caf3d0a2a6c",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-23"
  },
  {
    "uuid": "30bc736c-50fe-454d-8d7f-385aa42e0532",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-08-02"
  },
  {
    "uuid": "0cbef7d0-8c61-479f-ba40-b4d90b3fa91a",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-09-16"
  },
  {
    "uuid": "722ecc10-9688-4f30-9073-3ce6b58dbb6b",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-20"
  },
  {
    "uuid": "3d96584e-6809-4d7f-8c03-d55328ffdd47",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-28"
  },
  {
    "uuid": "cf5f0a99-160f-42f1-a68a-35ab2fef196d",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-15"
  },
  {
    "uuid": "0b88954e-160a-471e-8479-695f49bf7830",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-12-11"
  },
  {
    "uuid": "c4fd6462-6c7a-4763-8f1d-02847da4720d",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-04-02"
  },
  {
    "uuid": "b05f1351-a726-42be-be17-bb775257d71d",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-15"
  },
  {
    "uuid": "84af8e11-6f68-4017-907b-6a1979e174a9",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-09-14"
  },
  {
    "uuid": "a8638bf1-749f-40d1-95d5-c74366818d39",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-30"
  },
  {
    "uuid": "ebe1c91f-f2b5-413b-a486-a7549e485428",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-02-04"
  },
  {
    "uuid": "205da365-6964-45ca-b48a-221f89467c13",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-03"
  },
  {
    "uuid": "2114874d-bcfd-4bdb-b670-9b37d446f12d",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-25"
  },
  {
    "uuid": "115f76fe-9ec7-4115-9f8c-cdd8b27fabb9",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-14"
  },
  {
    "uuid": "9ccf1f53-a5d0-4259-84f0-d51c83a79ade",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-07-08"
  },
  {
    "uuid": "661b5a95-a10d-449f-9607-8c315bd60597",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-09-26"
  },
  {
    "uuid": "c6ca9bf4-ad65-4357-b7d7-df7bf75b5a0c",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-25"
  },
  {
    "uuid": "c69bada5-7f1b-434a-bc7d-88a559733c5a",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-03-06"
  },
  {
    "uuid": "148c6341-433a-4759-a423-b1c4bbb627c0",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-06-26"
  },
  {
    "uuid": "29ce8666-afe9-440e-bdbf-98aa57a156e1",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-10-17"
  },
  {
    "uuid": "465df64f-0cb8-4a35-8f58-46881b7f9a63",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-01"
  },
  {
    "uuid": "2e896367-dfa8-4045-8697-2fe050451daa",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-03"
  },
  {
    "uuid": "350d3673-585f-496e-9064-2e9516471639",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-01-13"
  },
  {
    "uuid": "9939cb87-ed58-488a-b4bc-6249bf14b217",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-09-08"
  },
  {
    "uuid": "364ddb24-3751-4097-a1eb-11fcf31d5321",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-30"
  },
  {
    "uuid": "62a02f20-793a-4ffd-8b54-fb30290da412",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-25"
  },
  {
    "uuid": "0af59a43-a45a-4f3f-9529-795886792b93",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-08-18"
  },
  {
    "uuid": "61ea8dde-a8a5-4a05-a6dc-8e1d4604e675",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-01-15"
  },
  {
    "uuid": "37c2c1f5-df25-4030-b4bd-b8fc83905772",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-12-22"
  },
  {
    "uuid": "23ec1ff8-03d2-42fb-8e61-f98bd218dba6",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-08-03"
  },
  {
    "uuid": "c5d0eefd-d52e-4b73-ac80-14b73f82cf81",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-29"
  },
  {
    "uuid": "7b7e23f1-0477-4653-abd2-116a20e09971",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-03-03"
  },
  {
    "uuid": "a67beaf2-2ff1-4b90-8c2b-1ce7a7438133",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-08-04"
  },
  {
    "uuid": "c8b42050-3699-4e36-8366-99ab32396e3f",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-03"
  },
  {
    "uuid": "bc8eea64-ce21-46b4-82b9-ecdeb8c3dfbb",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-25"
  },
  {
    "uuid": "2a1a143f-239e-466d-a09a-974db562bdc3",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-08"
  },
  {
    "uuid": "65debb55-c81e-4503-b79e-cff47ee116f3",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-28"
  },
  {
    "uuid": "81a4e8b5-ec5b-4fdd-a0ca-0b22950fac8f",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-10"
  },
  {
    "uuid": "d2ec750a-5939-4a17-bca7-652f0a8332fd",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-11-26"
  },
  {
    "uuid": "46d4b302-ed3b-4e3c-a441-ef8610fe092b",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-09-10"
  },
  {
    "uuid": "34cf0279-bd87-4c23-8de6-9cc8565153a2",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-04-26"
  },
  {
    "uuid": "2b4fe14e-509b-488a-a27e-fdddca752df3",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-10"
  },
  {
    "uuid": "e1b7075c-53b9-4efc-8b57-995c3bab1b15",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-01-08"
  },
  {
    "uuid": "27fd7408-bdaf-4631-9fdf-661f4c60782c",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-30"
  },
  {
    "uuid": "73db0441-23ea-441b-a9cc-691161d4cbf6",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-23"
  },
  {
    "uuid": "ae628cbb-768a-48b7-a2e2-4213ca6fabab",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-03-07"
  },
  {
    "uuid": "b89a1256-f7e9-419a-acda-a40f1c86eb28",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-06-07"
  },
  {
    "uuid": "140fdfb5-1e83-4bde-86f0-e3f3dce8413a",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-02-09"
  },
  {
    "uuid": "0f0fbdd1-f933-452b-bd18-03b622cb0c98",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-02-26"
  },
  {
    "uuid": "6462a58f-8fcf-4e1d-af5d-1a721ede0202",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-01-25"
  },
  {
    "uuid": "6b55744c-2afc-44b8-ad9e-11762d663e93",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-01-24"
  },
  {
    "uuid": "cc1fec3a-cf62-4236-9a71-31476e672883",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-03"
  },
  {
    "uuid": "3b2c10c9-fbf0-45ce-ab10-a679b4a69301",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-02-14"
  },
  {
    "uuid": "a21c8e77-6261-4be4-b218-242c5de83942",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-05-25"
  },
  {
    "uuid": "a56cceda-fca3-4ae3-93d8-3ae1bd2f3905",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-02-23"
  },
  {
    "uuid": "444e8279-0a29-49c8-9dd3-306bc65a2e47",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-02-17"
  },
  {
    "uuid": "79ad7855-3500-4605-bc5e-ec554a885b42",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-11-08"
  },
  {
    "uuid": "4c4b1f00-cf00-476b-93db-6229334cc418",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-09-16"
  },
  {
    "uuid": "1cb8de53-d920-44f5-934f-91c0262309a4",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-02-27"
  },
  {
    "uuid": "5a37925d-dec2-4d82-8afc-ab2f6a3a3273",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-05-14"
  },
  {
    "uuid": "5288cb5b-5dd0-4b47-a630-9355f03b1457",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-10"
  },
  {
    "uuid": "ae8f3a88-a2f7-433c-ba70-8e58c35a84f7",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-08-25"
  },
  {
    "uuid": "911ac764-dd98-4e31-baf8-d894ee737059",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-07-18"
  },
  {
    "uuid": "2c845e98-e021-470a-87a3-828e573900c2",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-07-20"
  },
  {
    "uuid": "69d8beca-ff28-409e-8607-1b7d030be39a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-01"
  },
  {
    "uuid": "930436a8-61ee-476d-951b-3ede3b79f604",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-17"
  },
  {
    "uuid": "a4b5dbf0-dc70-44cb-8681-b5c2f4bb0063",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-04-10"
  },
  {
    "uuid": "cb31d8b0-5832-43e1-ba25-3e782b1e8606",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-03-12"
  },
  {
    "uuid": "01749d1e-f2f2-4a90-a73e-d16986ec8d57",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-03"
  },
  {
    "uuid": "8d0905f9-19f7-4dec-9e9b-3c3edb158d1c",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-16"
  },
  {
    "uuid": "2fe551da-f7b0-4125-b878-eafc06ea3bd1",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-27"
  },
  {
    "uuid": "eba95554-9a0a-4cd1-867a-6f914aea36cc",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-06-03"
  },
  {
    "uuid": "1215ab4d-9b05-4d4b-8b71-9f91d3e534c1",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-27"
  },
  {
    "uuid": "0f5bba1b-67c2-41f8-a4d0-eb4b8f43fe42",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-04-30"
  },
  {
    "uuid": "669f1180-26b2-4633-9525-26d01b7d02b7",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-11-14"
  },
  {
    "uuid": "6194cd09-d7c5-43bc-af6a-b51e1be85599",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-06"
  },
  {
    "uuid": "1460b0eb-7048-4f9f-8656-5a77fd03d45b",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-29"
  },
  {
    "uuid": "bcaf312b-4016-4e8c-ad95-b3c743a73c44",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-01-27"
  },
  {
    "uuid": "3a851694-ffad-4047-acef-95514322cc0d",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2019-04-14"
  },
  {
    "uuid": "4532d747-f25f-49a9-b8f5-a8daf4b1c071",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-09-14"
  },
  {
    "uuid": "0e7d01b3-769b-4d47-a7cd-b46d41072d04",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-12-10"
  },
  {
    "uuid": "0193be93-4167-4f17-ab35-bfccbe48ecc0",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-11-30"
  },
  {
    "uuid": "2d8b2026-f503-4c90-a50f-9b29e3b3a47b",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-05"
  },
  {
    "uuid": "6f6549e8-bb95-4265-a0cf-6d0c937bb5cd",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-11-08"
  },
  {
    "uuid": "b12099f2-fa16-43ed-b792-76450598c445",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-09-17"
  },
  {
    "uuid": "1f1bd843-159a-4f0d-af14-2a4b95ae66b3",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-05-18"
  },
  {
    "uuid": "fb256de8-7093-4ce8-a696-23944631de01",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-03-19"
  },
  {
    "uuid": "d0dc13ba-3d5d-4ff2-bab6-c825b89ef916",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-19"
  },
  {
    "uuid": "fbf21626-1b89-4a48-981d-e1c3926a76d7",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-12-23"
  },
  {
    "uuid": "f67e71d1-eec6-42b8-8d6f-cb7c32c5d9ac",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-02"
  },
  {
    "uuid": "1d6369b5-46cc-4dd1-ad55-05ff5fcc1f7e",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-12-24"
  },
  {
    "uuid": "4b1611c6-eb84-486e-abdb-a640f87627b1",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-11-12"
  },
  {
    "uuid": "493a96dd-3544-4409-b04a-f8112c53044d",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-05"
  },
  {
    "uuid": "f6f1e363-7fcb-4ecc-b274-34c880d7b37d",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-04-25"
  },
  {
    "uuid": "03d527e0-58e8-490e-a8bd-f27bfe1e81ee",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-05-31"
  },
  {
    "uuid": "7315cf7c-b61f-48a2-8f2a-5592d61b9f33",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-05-08"
  },
  {
    "uuid": "51951982-22ea-4375-bae5-47446078e02c",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-02"
  },
  {
    "uuid": "ad0bafe7-3ebf-4bfb-aaec-d49482c161ff",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-03-21"
  },
  {
    "uuid": "45642129-3390-48d9-8911-3dcdd3c10b6f",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-08"
  },
  {
    "uuid": "ac7414e0-43a5-4215-b17c-64cf0f2f240a",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-29"
  },
  {
    "uuid": "bd59bf21-78cf-40c7-81a7-95eec945865a",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-06-09"
  },
  {
    "uuid": "ae776c42-6ff2-4ab9-b6c6-4f5b070ebd9a",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-03"
  },
  {
    "uuid": "f8948bea-e1fc-43de-9bd5-7f69fb775303",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-02-02"
  },
  {
    "uuid": "1848e1e2-c70e-41be-aef1-5d149cb9a32d",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-10-01"
  },
  {
    "uuid": "607b71bc-ea40-40db-bdc4-4ba475091457",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-08-05"
  },
  {
    "uuid": "ef4d4432-4db2-4715-affa-6904c82fa1a9",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-04-13"
  },
  {
    "uuid": "bcb072a4-1f18-47e3-b3ed-79167aae6868",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-08-20"
  },
  {
    "uuid": "2baf7930-18df-4b23-9c40-a61bd02883ad",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-05-16"
  },
  {
    "uuid": "6484779b-1b1f-4d65-b963-06fe634a622b",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-24"
  },
  {
    "uuid": "e4689e3e-096a-490c-933c-31b732523350",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-05-27"
  },
  {
    "uuid": "8a7f316b-a873-4cae-9426-d6156d0d520f",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-26"
  },
  {
    "uuid": "30b6d28b-4a3c-483c-a6ed-be98042d678b",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-31"
  },
  {
    "uuid": "ec5be438-c867-40b9-b3d9-419f3018725f",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-20"
  },
  {
    "uuid": "f2b557c9-3d12-4e26-b379-5526eb433d9a",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-02-09"
  },
  {
    "uuid": "153b33b7-b4f1-48d9-96d1-46bc8985a001",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-24"
  },
  {
    "uuid": "fd64861e-37c2-477a-9195-3511871b4c8a",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-09-07"
  },
  {
    "uuid": "ef484b98-bb20-4e33-bbcc-2caba62982ff",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-26"
  },
  {
    "uuid": "55a9cfe8-de2a-4a10-88b4-afa671384043",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-01-25"
  },
  {
    "uuid": "62e8be9a-11b9-4317-a944-dbb704fc463e",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-26"
  },
  {
    "uuid": "9b5a2bf0-b4fa-4c04-a90f-119d749a78b3",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-02-26"
  },
  {
    "uuid": "530f0339-94d8-40a8-ba9c-70590fe87e81",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-07-27"
  },
  {
    "uuid": "a41490b8-48c6-4d68-bde1-f352e643135e",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-03"
  },
  {
    "uuid": "1b51c596-323c-430c-9c25-7741b2d041ae",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-07-21"
  },
  {
    "uuid": "5dc78c72-fcef-4a27-bed3-62069e51ab22",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-24"
  },
  {
    "uuid": "caa3383c-97b0-4708-a93d-b735556bb50d",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-03-01"
  },
  {
    "uuid": "48f244b8-f35f-4956-bafd-30ca7bf08044",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-02-21"
  },
  {
    "uuid": "8c6d4415-4cb6-4b1b-9126-e9165d05f9b9",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-14"
  },
  {
    "uuid": "125327eb-2f4a-4d4f-9085-5422ef7b169a",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-15"
  },
  {
    "uuid": "48c37ff9-ade1-48a4-9ad2-fb5936b1701c",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-08-01"
  },
  {
    "uuid": "d6064be2-6acd-430d-b86b-044b91b6034d",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-08-07"
  },
  {
    "uuid": "37c8d6ff-f04e-470b-a043-404e60fbb29f",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-03-14"
  },
  {
    "uuid": "733f4953-0719-45df-a7d9-d30a734c13ac",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-01-22"
  },
  {
    "uuid": "465e761e-fe64-4c16-8851-96413ebe1e30",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-26"
  },
  {
    "uuid": "1bd46f60-5d69-43e1-9419-aebdf51dcf78",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-09-12"
  },
  {
    "uuid": "1c805b26-29dc-49c5-a47f-921ed88e1e4f",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-10-05"
  },
  {
    "uuid": "d0f803c9-8cc9-4d53-ba78-227c8d03960b",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-11-03"
  },
  {
    "uuid": "b086d7c2-429b-443e-b037-ef20eb8cfda2",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-04-14"
  },
  {
    "uuid": "e636fafb-696f-4ca9-a717-0434c9f0d908",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-25"
  },
  {
    "uuid": "20354ed5-5393-4ee6-bf0c-96c81f207bb8",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-06-15"
  },
  {
    "uuid": "c202c1f3-d306-4f48-b2aa-ae116ee2ef7d",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-02-09"
  },
  {
    "uuid": "a1cafc3d-6ba2-4415-916f-4c7bd28cb986",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-12-27"
  },
  {
    "uuid": "9d6ea848-5a0b-4f6c-a3f5-8ae107340bd5",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-09-20"
  },
  {
    "uuid": "d298c9a6-873a-4d98-92dc-1a4234adeee5",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-02-10"
  },
  {
    "uuid": "77f39be8-f35c-4240-82e3-5bf1509e9408",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-04-23"
  },
  {
    "uuid": "c8b24f8a-e450-4b04-a8cc-6561b1ca4552",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-02-10"
  },
  {
    "uuid": "30bf5fe0-b981-49be-9c5a-e0ac8821ce72",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-07-12"
  },
  {
    "uuid": "0c06a902-3749-4365-a66f-ca2900745b82",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-06-28"
  },
  {
    "uuid": "4867da7d-b782-4a28-a834-0f69b0a7c80e",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-28"
  },
  {
    "uuid": "eb150d7f-3a3f-4eec-b944-d5dbc830dd69",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-09-24"
  },
  {
    "uuid": "87c99f4d-497e-4297-9d6e-41657d574058",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-25"
  },
  {
    "uuid": "2a153099-7ca8-4ef6-85a4-33ef17f1f245",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-10-21"
  },
  {
    "uuid": "2c53160c-771d-4e98-b906-50926ef81c02",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-01-07"
  },
  {
    "uuid": "df8f554d-1ac5-48ea-b464-a7c4f724cbbf",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-09-03"
  },
  {
    "uuid": "19af64a9-52fc-481e-badd-c07e9845e565",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-07-23"
  },
  {
    "uuid": "434840ef-34c9-42da-a072-5c7f6e1358d2",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-06-28"
  },
  {
    "uuid": "49cc5ad1-951d-4722-8bf5-067decacdee1",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-13"
  },
  {
    "uuid": "9fc0f41b-765b-45cc-892f-74aa9c790681",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-08"
  },
  {
    "uuid": "a3121dc6-f47f-4812-b929-d07d7dce725f",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-01-12"
  },
  {
    "uuid": "57d70ee5-35b2-4ab7-b24a-91404b915bac",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-08-13"
  },
  {
    "uuid": "8f71980a-ee32-4db0-af8f-aab150da4c2f",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-05-05"
  },
  {
    "uuid": "c7cc6264-36a9-4c4b-af73-fe370d9f98c0",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-02"
  },
  {
    "uuid": "5b029708-2efc-4203-8111-1953cafd5dce",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-01-29"
  },
  {
    "uuid": "5ac20311-dbf6-49a8-9484-e1fd683ee380",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-12-06"
  },
  {
    "uuid": "8fbe1dfa-b16e-4721-aed4-20e4a6a29f63",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-09-15"
  },
  {
    "uuid": "5b7cd7ba-d7ab-4884-86b7-f23879f21392",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-04"
  },
  {
    "uuid": "09d7095c-bcdd-4bf7-8680-ffc26360e01e",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-02-11"
  },
  {
    "uuid": "5f8124d6-15ad-404e-a741-941a11a86bdb",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-06"
  },
  {
    "uuid": "4a45aab6-0eb5-4b9e-8169-c2698b348020",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-11-19"
  },
  {
    "uuid": "4fdfbccf-700f-4176-9ae4-98154396aef2",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-12-02"
  },
  {
    "uuid": "d6b33b3f-ad5b-496a-a4b5-b419da337fc8",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-05-17"
  },
  {
    "uuid": "81c14553-3cc8-4498-bfce-f5a8d25b90f6",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-03-18"
  },
  {
    "uuid": "e2da038e-09dc-4e30-be6b-c0f9f3ecb91a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-05-15"
  },
  {
    "uuid": "65a202f0-f7e6-4d04-b1d7-bf8495f635ad",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-03-09"
  },
  {
    "uuid": "7e4ca74d-7cab-4473-81d2-9fc3a8cf3e60",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-03-13"
  },
  {
    "uuid": "d96dc70f-f67d-4db2-b274-8dcefe7473a8",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-05-19"
  },
  {
    "uuid": "891730d3-b89d-4a15-ba06-040934cc1f9c",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-09-15"
  },
  {
    "uuid": "7a1f720a-012b-4de4-8e3e-2ec21ce13635",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-08-04"
  },
  {
    "uuid": "b21659aa-0721-4351-be55-ee684329946b",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-07-15"
  },
  {
    "uuid": "37cd47c0-d397-400e-bf45-5c4f42436b18",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-05-26"
  },
  {
    "uuid": "b780d4f1-cde1-4baf-862b-0e1093b8ad9f",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-05-01"
  },
  {
    "uuid": "be59ee37-ccff-4447-b2b6-ab705fd751fd",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-09-04"
  },
  {
    "uuid": "bde662c3-aae3-4981-ac9e-62c503756340",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-03-04"
  },
  {
    "uuid": "464cb77e-5830-4afb-b545-793242f4ffea",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-31"
  },
  {
    "uuid": "cc6d4c6f-b1e7-4a74-a82b-7edb65761a16",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-03-13"
  },
  {
    "uuid": "01c78f83-d4d6-4c97-a2e5-f79fd19e75f5",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-11-21"
  },
  {
    "uuid": "210ae040-8866-443d-9579-e31faae5293c",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-10-12"
  },
  {
    "uuid": "809feb36-f045-4a42-876e-118cd5c8ffe3",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-02-22"
  },
  {
    "uuid": "81491972-6376-42ed-8fe7-570a351bfcc2",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-03-28"
  },
  {
    "uuid": "2cd6260a-1545-4ba1-9f43-aae4060370d0",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-03-10"
  },
  {
    "uuid": "e3a19c14-55ee-43c6-811b-55d835b13010",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-23"
  },
  {
    "uuid": "4b629dc1-9b8d-40c2-9107-4fed39f37be7",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-04-12"
  },
  {
    "uuid": "dd5f057d-8f11-42d1-9057-f9a8d861026b",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-13"
  },
  {
    "uuid": "9c539433-0890-4e22-82e2-1263c1c4e209",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-01-13"
  },
  {
    "uuid": "5e67bc76-cc2e-4a19-a2f3-01af1cb40c2c",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-08-31"
  },
  {
    "uuid": "f9d64f80-5b71-47bc-8f7d-cc0a57d57a5d",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-06"
  },
  {
    "uuid": "add64d74-f5a1-4ea5-962c-30b2d2e4be7b",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-07-28"
  },
  {
    "uuid": "af828692-03f4-4bd1-b03f-59a9b4bbde01",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-04-21"
  },
  {
    "uuid": "81241a7e-9033-46ae-a18f-187a8829ab85",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-23"
  },
  {
    "uuid": "74f918f7-994d-4790-a0ad-d9cc3b371d15",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-08-18"
  },
  {
    "uuid": "adf2ca43-c3dd-4904-ae50-07a4391dd2e6",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-29"
  },
  {
    "uuid": "6334dca7-e777-418f-9f5c-15e2084be5f4",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-09-10"
  },
  {
    "uuid": "b28d353d-52a7-403a-8b91-b40a36c60395",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-08-30"
  },
  {
    "uuid": "356786f6-9ea0-4b42-a58e-df820dd8a35e",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-22"
  },
  {
    "uuid": "eabfd6d0-6428-4e15-962a-4756eb847c4d",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-06-01"
  },
  {
    "uuid": "6de910b6-a5fc-4bf5-b456-c411b6ab585d",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-05-28"
  },
  {
    "uuid": "874883f4-539c-460f-bc0f-cf3e9bbf98d3",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-02-23"
  },
  {
    "uuid": "08363f7f-23e6-4ca5-90c8-0c849a4f522a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-02-26"
  },
  {
    "uuid": "263d1d9f-e086-459c-8202-a153447930c6",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-12-19"
  },
  {
    "uuid": "e042c834-e39e-419c-a613-146f46d0f50b",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-05-19"
  },
  {
    "uuid": "2731915e-6b8c-47f6-b713-7197594e282f",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-01-17"
  },
  {
    "uuid": "5b4a6890-94c9-4253-9f5b-1f9e8cf609ef",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-16"
  },
  {
    "uuid": "e65c3788-d1cb-4380-ae03-7f6ad9334e85",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-07-03"
  },
  {
    "uuid": "19e50415-053e-4798-80aa-dc51a9d6f0db",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-07-24"
  },
  {
    "uuid": "91eba709-bde1-4aac-9f8a-9ee5bc3d8057",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-26"
  },
  {
    "uuid": "edf3bcf1-f29c-4174-b9de-f7e04ac995de",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-08-28"
  },
  {
    "uuid": "c7a358c9-4eaf-495d-9b21-80df9b6cccd0",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-05-02"
  },
  {
    "uuid": "cce6a99d-b9df-4a0e-b596-bd7f45bb6cce",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-02"
  },
  {
    "uuid": "8eb6713e-12ca-4c78-bd8d-e92e654e965d",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-04-26"
  },
  {
    "uuid": "a6db4f3c-3d6e-4da4-95ef-3fddfec881bb",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-11-04"
  },
  {
    "uuid": "47dd6f34-e25d-4be4-a77e-db8a28596303",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-09-05"
  },
  {
    "uuid": "f5434ff2-c8e4-4318-b25e-14e483526439",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-06-14"
  },
  {
    "uuid": "bc44bc08-d9bc-406f-8d20-899a04826d50",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-27"
  },
  {
    "uuid": "1d6b78fd-40b6-439b-b14d-6b7af068cb1f",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-06-14"
  },
  {
    "uuid": "8dcac751-6aff-44c8-a967-31cec2f9d649",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-07-07"
  },
  {
    "uuid": "1466125b-7445-4949-b889-c6113958e779",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-04-20"
  },
  {
    "uuid": "2c5f67b9-23af-4805-b40f-632174bf937f",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-12-12"
  },
  {
    "uuid": "aab6a2ee-0313-4fff-844c-beda8658bd47",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-02-11"
  },
  {
    "uuid": "726f9315-3426-4789-b0d2-bfb1b57d21aa",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-31"
  },
  {
    "uuid": "6d2e1442-153f-423d-8bae-b7d847c4964b",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-04-19"
  },
  {
    "uuid": "9b05b46d-0fa5-4078-8849-bc24271a41d0",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-01-24"
  },
  {
    "uuid": "c4c1d426-eb84-43a9-a07b-7f94fff05a97",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-08-04"
  },
  {
    "uuid": "c6ac2b22-9239-44cd-809d-b7abc012f1c7",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-31"
  },
  {
    "uuid": "bc4cdfd7-7de4-42b3-b5ac-9d03d13d353d",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-01"
  },
  {
    "uuid": "42457d42-9c80-4d7e-b24f-0afe160a41b8",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-19"
  },
  {
    "uuid": "a870a615-9bb8-4ccb-b501-3df275b3b9f9",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-04-23"
  },
  {
    "uuid": "ff51b97d-4337-4bc8-b129-7a1dfb4c2c7b",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-12-12"
  },
  {
    "uuid": "dd362bc7-bc9a-40c9-93b8-95b7b63e4d6f",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-06-13"
  },
  {
    "uuid": "65fac87f-bf14-48d3-ba8e-5d31c04214a9",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-02-01"
  },
  {
    "uuid": "ff052130-00e0-47b1-9c02-268be0a136ed",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-01-21"
  },
  {
    "uuid": "d5fd18a1-65b9-4d86-a94a-abf37052b871",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-05-24"
  },
  {
    "uuid": "90b31450-d0e0-41b1-a3a3-cf4e45ee44f4",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-09"
  },
  {
    "uuid": "1392bcfa-8fbb-401c-9a78-1af57b933e38",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-11"
  },
  {
    "uuid": "8d227af3-69e9-423b-b2cd-22f4bad9d4b2",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-12"
  },
  {
    "uuid": "baa0b300-b5e3-4955-8f9d-de5676f3031e",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-07-06"
  },
  {
    "uuid": "0ddb94cd-28c7-4014-a3d5-f0462f76532b",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-10-13"
  },
  {
    "uuid": "a48be64a-f115-4d2b-83a9-84cc73fbc1c6",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-05-07"
  },
  {
    "uuid": "80f95be3-1868-4ba4-91db-47477ffc2de2",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-13"
  },
  {
    "uuid": "db6c800a-58b0-4477-af42-f91123e02d9b",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-08"
  },
  {
    "uuid": "69809e59-d1e3-443c-8676-0b9265322ac7",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-07-27"
  },
  {
    "uuid": "c5df2f7f-0f83-4fa7-a99f-e88603317204",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-04-20"
  },
  {
    "uuid": "6ef1e67f-7a23-45ef-afdb-30e051af48f9",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-08-16"
  },
  {
    "uuid": "992dbd78-5cee-4c4a-8fc1-d09944dbe6b7",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-09-29"
  },
  {
    "uuid": "d2cd27e4-ccef-4bdc-a14b-d423b5b71789",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-04-11"
  },
  {
    "uuid": "8537548a-dc70-4111-830a-3e5bf8a2e70c",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-02-16"
  },
  {
    "uuid": "ffd85644-25b3-4e78-beb7-4cd779600496",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-12-31"
  },
  {
    "uuid": "d021404d-e67b-46b5-9e69-d2199fbb2af8",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-07-12"
  },
  {
    "uuid": "fa22b258-4ac5-4e6d-93cb-9acca419fddd",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-10"
  },
  {
    "uuid": "eb29d208-d0c5-4355-984e-dd1d6ea1c9b6",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-06"
  },
  {
    "uuid": "31c69a3c-ea58-4b00-ab61-f04043f483ef",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-07-24"
  },
  {
    "uuid": "810b7265-211f-43fc-ae92-006ea6d81f5e",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-07-10"
  },
  {
    "uuid": "54a81b81-3cfb-485b-9553-e6e3ce288614",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-04-15"
  },
  {
    "uuid": "937b0b72-177a-4524-9539-ebb087faece0",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-07-22"
  },
  {
    "uuid": "bb41b79b-9626-484c-99c5-be5ffc397e72",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-05-09"
  },
  {
    "uuid": "8b678f53-f035-4b31-9f4f-13eb606bafdd",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-02-04"
  },
  {
    "uuid": "c7492050-d0a5-42ce-bf33-cc195697ef4f",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-04"
  },
  {
    "uuid": "84a59add-1c3b-41f9-8f53-86f9ad38a680",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-18"
  },
  {
    "uuid": "3caef89b-5b6f-4544-8c2d-7ab1c5e45086",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-08-24"
  },
  {
    "uuid": "eab8683e-4453-4304-bbb4-f48a007ec541",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-09-15"
  },
  {
    "uuid": "05834056-2528-469c-a046-6a904406474e",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-01-09"
  },
  {
    "uuid": "161a3dcf-3018-40e0-81cb-726f53ff9c5c",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-06-14"
  },
  {
    "uuid": "b3274364-64cf-4801-98b5-070016e2519f",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-26"
  },
  {
    "uuid": "8b8118a6-f50d-4cca-8361-7d1d3dc8742b",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-12-31"
  },
  {
    "uuid": "f78613fa-d259-4c7f-92fa-5dd068dcb03f",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-03"
  },
  {
    "uuid": "92b64480-912c-4a4a-9821-9858a1d40153",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-16"
  },
  {
    "uuid": "077713da-cff3-4ce7-bd04-a714d571ef6e",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-05"
  },
  {
    "uuid": "6208b122-a3eb-47cd-b235-addd30b85cf6",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-10-14"
  },
  {
    "uuid": "95c62d6a-7a2e-474d-8a11-284de7d408d4",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-04-30"
  },
  {
    "uuid": "c7924dbf-2b43-45ee-85b1-cd9a95d905b4",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-05-18"
  },
  {
    "uuid": "058fd4f2-cd8b-45a4-847c-81b37c0e7b05",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-03-17"
  },
  {
    "uuid": "d747ddcf-4eb7-4744-b2a7-1139985d6db9",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-03"
  },
  {
    "uuid": "060c8aef-2b80-4384-aa9c-4938dc24a345",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-05-13"
  },
  {
    "uuid": "f6844f9f-09e7-4907-8c3b-1844a4c75fef",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-04-26"
  },
  {
    "uuid": "606584d4-f253-40cb-84f6-e65188495641",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-04"
  },
  {
    "uuid": "c6ce65a1-55a2-4135-910b-3c995f85f166",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-06-24"
  },
  {
    "uuid": "8aeae41d-d84e-4eb4-b903-8cd831fe35e6",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-21"
  },
  {
    "uuid": "2749e928-bca3-4ae6-8032-c20d96f31cba",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-19"
  },
  {
    "uuid": "a14e0745-b83f-4857-9e50-3585a1543e8a",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-01-13"
  },
  {
    "uuid": "6c18ec77-987b-4ce6-b285-7595e0396381",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-17"
  },
  {
    "uuid": "bd207d46-4d1f-4308-9fc4-d82c58a415f2",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-20"
  },
  {
    "uuid": "1d74ae27-6c6e-4264-8034-4cf568b47d51",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-11-25"
  },
  {
    "uuid": "de85d79d-ffee-4bad-afff-ad2854bb6ba5",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-02-12"
  },
  {
    "uuid": "ec75ef1e-281e-48f8-8814-461cf83a02b2",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-04-15"
  },
  {
    "uuid": "c1b6fece-9286-4fe4-86b4-0502a4708a5a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-11-01"
  },
  {
    "uuid": "e032eb3a-ab21-4404-9123-3d9cd7beb12b",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-05-26"
  },
  {
    "uuid": "67fc9a71-7d8a-4c89-8a5a-58aa2e5381fe",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-07-28"
  },
  {
    "uuid": "64c26f02-68f6-425a-a58b-0319e4064058",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-10-01"
  },
  {
    "uuid": "e41a2726-e0cd-4492-bbf3-fa180b6500ad",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-26"
  },
  {
    "uuid": "0f3a80f5-d1c5-4f07-9d7f-de67d7b71b03",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-09-11"
  },
  {
    "uuid": "bef03e71-592d-40fa-ab5c-53f1f6687513",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-09-11"
  },
  {
    "uuid": "31db6a90-8695-48b6-9de5-b353d8de1320",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-06"
  },
  {
    "uuid": "a0ec44ae-88a5-4208-a8e2-f56cba8dac6b",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2019-01-03"
  },
  {
    "uuid": "b1ded5a2-bbb0-422c-8d59-f2dbde7b0072",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-02-05"
  },
  {
    "uuid": "e01dd6c8-86b2-404e-bf2f-ffea300fda72",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-20"
  },
  {
    "uuid": "f2a5fe8e-2c0c-406d-8d1e-622b66a2fac3",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-09-03"
  },
  {
    "uuid": "0867817c-fa3d-4a9e-9394-ccb2933b7f1f",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-22"
  },
  {
    "uuid": "3a3157d7-9b83-43dc-ba8b-746706dac91f",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-08-31"
  },
  {
    "uuid": "af204949-b1e3-41a6-9519-531b79f13afe",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-02-05"
  },
  {
    "uuid": "4b40985f-a9a2-4963-b46a-426394ba44f2",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-02-02"
  },
  {
    "uuid": "3bdab563-12f3-4ea6-9045-5bd9a1df5995",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-22"
  },
  {
    "uuid": "a8c92531-91cc-44af-b332-9010b0538ced",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-03-13"
  },
  {
    "uuid": "98a4572f-7e29-47d6-9b3f-c76c15e54876",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-05-13"
  },
  {
    "uuid": "c1d488c6-763c-4b4c-a873-cc0490fd9723",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-07-27"
  },
  {
    "uuid": "28f5eb6f-63d6-4577-9f5d-0ae2d033c887",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-17"
  },
  {
    "uuid": "f36b4993-3438-499c-b681-dece718f38b1",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-15"
  },
  {
    "uuid": "a384a2c9-63bd-4229-91d4-fac5da80ff5f",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-03-31"
  },
  {
    "uuid": "736769e0-eaf7-4117-87f3-12158c41e528",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-07-30"
  },
  {
    "uuid": "59329a98-d43f-4b85-b93d-7afa9aa4bdd3",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-08-09"
  },
  {
    "uuid": "073b5943-67a9-42f2-b52f-bb8bc0ee82d3",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-21"
  },
  {
    "uuid": "ea7370f5-44b2-4ffa-a6a2-518529b7d1a3",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-09-12"
  },
  {
    "uuid": "281ea734-4865-4219-90be-8686be794c5d",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-07-09"
  },
  {
    "uuid": "87ac62c6-ea6b-4529-a941-ba8bf74ea4c5",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-03-15"
  },
  {
    "uuid": "2e137b40-7643-4336-949c-1008aa4a6b4b",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-04-19"
  },
  {
    "uuid": "08aecf35-2512-4c97-806f-92ac066d3561",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-11-14"
  },
  {
    "uuid": "3e3a8f0f-2248-4338-bc4f-1ef35aba547c",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-22"
  },
  {
    "uuid": "bb72cf2f-5541-42ad-b117-de2677c28ec0",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-09-20"
  },
  {
    "uuid": "79d8f9f1-ff12-4939-af98-288b8505ed00",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-02-19"
  },
  {
    "uuid": "7038a1e0-8a90-4651-9eda-fc4203cf28a8",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-04-04"
  },
  {
    "uuid": "87dd5400-d80e-4cda-a441-d7788fd2948a",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-11-27"
  },
  {
    "uuid": "d1b1ac64-a9d7-4eae-8941-c34603b967d8",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-02-22"
  },
  {
    "uuid": "446c15ec-270e-44ec-8632-756b37b411a5",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-03-02"
  },
  {
    "uuid": "00530be9-7f2e-4da8-b352-94906707cd7d",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-05-07"
  },
  {
    "uuid": "6c2e95e3-1282-4d1e-aa2c-9efc6e760a59",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-02-13"
  },
  {
    "uuid": "fe4ac24d-6013-46c3-adae-c4b49f9ec853",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-03-20"
  },
  {
    "uuid": "9a26edf9-21ac-4aef-8d02-e24451bd656a",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-07-24"
  },
  {
    "uuid": "a9254c78-daf4-4aff-b31a-4b84ffcfa284",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-05-05"
  },
  {
    "uuid": "62273984-2b83-4068-b7ee-131c9252d2d7",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-24"
  },
  {
    "uuid": "e64b5ff7-5251-45dc-b814-394583228c20",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-01-25"
  },
  {
    "uuid": "971f2e7e-dd6d-46eb-b9e5-8271bce43cc6",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-02-09"
  },
  {
    "uuid": "9ddc515e-3f6d-4bdb-befc-70e4fcd106ea",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-08-22"
  },
  {
    "uuid": "275ae625-275e-4c7c-919c-82cd052ca24e",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-28"
  },
  {
    "uuid": "891e9daa-77f7-4012-b053-b2db5bc78e08",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-08-14"
  },
  {
    "uuid": "3f2db221-f80a-4af1-bae1-6e7744c7ddc3",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-09-16"
  },
  {
    "uuid": "e36bd1bb-63f9-44e8-82ee-ce537f43b350",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-05-07"
  },
  {
    "uuid": "387f34c3-f7ca-4c2d-be88-fffacbeb76bf",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-07"
  },
  {
    "uuid": "ecf71e61-4b84-4108-b147-529f50687ad2",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-06-20"
  },
  {
    "uuid": "07b3023d-c044-473e-9572-60e171d9b998",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-21"
  },
  {
    "uuid": "b25f9e6f-87ca-4462-a2fa-4fe5b34e5399",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-01-17"
  },
  {
    "uuid": "03036278-752c-413c-b656-0519ba7112f5",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-09-11"
  },
  {
    "uuid": "da2b3040-d7a3-40af-bbbf-3e849384d137",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-06-29"
  },
  {
    "uuid": "22e62947-19b8-4fa3-86db-f21e60fcf91f",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-06-16"
  },
  {
    "uuid": "4fc2d966-8489-4be4-8525-e2ece6da9f8b",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-04-10"
  },
  {
    "uuid": "c523aeaf-002e-46bd-8258-3139ab57a37d",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-13"
  },
  {
    "uuid": "a040752e-01dd-40d5-bcda-f49f57c57d13",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-05-22"
  },
  {
    "uuid": "9e8db2ae-71c5-486b-a8d5-b4400bc8524d",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-06-06"
  },
  {
    "uuid": "7902b343-4878-4d5f-8871-62b343dce29b",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-07-21"
  },
  {
    "uuid": "39e5e7a1-8b64-4c15-91f1-f8294f769e38",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-07-08"
  },
  {
    "uuid": "822225da-7fd3-4592-b5fe-9fa89383ec17",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-03-11"
  },
  {
    "uuid": "280cdb3f-a2ba-4c70-b086-6415ea877821",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-08-20"
  },
  {
    "uuid": "87783d1f-5300-43c7-89a5-1248c1fdcb0b",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-21"
  },
  {
    "uuid": "074671b6-05a0-4e42-a902-ff309643a17f",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-12-20"
  },
  {
    "uuid": "2f09f313-689a-4956-ad01-af602f7f2d1a",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-21"
  },
  {
    "uuid": "5e751d67-87eb-4ec1-abc6-fd46d5fff1f3",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-05-21"
  },
  {
    "uuid": "bfd6f713-9721-4a3e-9b86-ab2e221bda65",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-17"
  },
  {
    "uuid": "bd7aa3d3-854b-4c7c-8cfc-f9d02b0c2eaf",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-01-24"
  },
  {
    "uuid": "fb8015af-b8a4-4085-98da-505e560219cf",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-21"
  },
  {
    "uuid": "5d754af3-c198-49da-b017-2ca336b6eb50",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-22"
  },
  {
    "uuid": "4be4d502-776a-418a-b644-59bdc74957cb",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-13"
  },
  {
    "uuid": "ffa68188-6502-4632-8608-1518a319d04f",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-08-15"
  },
  {
    "uuid": "48c2e437-d870-4ade-bee2-e3e44f261798",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-09-13"
  },
  {
    "uuid": "554d99ed-c3dd-4ce4-a23f-bde47b326534",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-05-05"
  },
  {
    "uuid": "bd389bb3-a104-4bd1-ae1f-29e57c3acffe",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-20"
  },
  {
    "uuid": "209953d1-6c16-4e04-a0b5-a361f7d9af51",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-02-17"
  },
  {
    "uuid": "3bc9fd85-83c9-4674-b884-5aee1e47e411",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-02-26"
  },
  {
    "uuid": "232dcb17-df53-4a8a-8524-a481f8431b6d",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-12-13"
  },
  {
    "uuid": "eaad2310-c284-42fe-b604-7b65005c3adf",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-04"
  },
  {
    "uuid": "23a348d9-e375-405c-a17d-84792bcf5824",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-12-22"
  },
  {
    "uuid": "0a7c3e37-296c-43ed-a8ae-f147cc1885ae",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-08-23"
  },
  {
    "uuid": "cf6a9634-ee52-4edf-bdd4-fc0857d5da9e",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-07-20"
  },
  {
    "uuid": "ab38a257-d8b5-409d-976a-e95e056ca9a1",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-05-02"
  },
  {
    "uuid": "812c8b5a-3d01-4998-977c-a2dea94d7d86",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-03-27"
  },
  {
    "uuid": "6c58a634-9422-4b64-a63e-471850adff99",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-08-29"
  },
  {
    "uuid": "de983537-504e-42c8-b92d-12c4f27da19f",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-11-14"
  },
  {
    "uuid": "a071677f-079b-4e1c-8ba8-055bcb2a71b0",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-07-18"
  },
  {
    "uuid": "fca609cf-6745-4047-a9a6-7fd913467647",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-02-03"
  },
  {
    "uuid": "a7c13521-bd9a-4ba6-8b24-f97662d180bf",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-01-27"
  },
  {
    "uuid": "8f7867af-6a15-423f-909a-1d0b8e8614fa",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-08-31"
  },
  {
    "uuid": "ba80f8a2-7d42-4626-9010-541bfc1f4c1e",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-03-24"
  },
  {
    "uuid": "25cd7fce-bd4a-4453-947a-8c687b8bdbfa",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-03-20"
  },
  {
    "uuid": "5008a934-9d28-4a39-bf8c-1a98eed3d717",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-10-07"
  },
  {
    "uuid": "baeb480c-d69d-4473-8f85-bd7652cbc0b4",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-28"
  },
  {
    "uuid": "73565163-f3f1-4529-8a0f-27efc81e83e8",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-08-14"
  },
  {
    "uuid": "540c059f-a4e7-42c3-babe-8e980fa9b41b",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-03"
  },
  {
    "uuid": "74bdde7f-5e45-489e-a5f1-88e84a2b53a2",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-05-29"
  },
  {
    "uuid": "95b59515-2d33-46ac-bfde-9904a75f5584",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-11-29"
  },
  {
    "uuid": "7e1aef63-f428-46e3-ae0d-b796f54203ba",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-09"
  },
  {
    "uuid": "0d163406-d06c-4de2-b37e-dabc2eb23e21",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-03-17"
  },
  {
    "uuid": "2cfb7143-f834-41c2-ada2-86950aae119c",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-08-24"
  },
  {
    "uuid": "1d0865b1-b90e-40ac-bd49-752b0df8879f",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-08-22"
  },
  {
    "uuid": "9d88df0f-5f53-4024-b33e-91738ad44de2",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-01-27"
  },
  {
    "uuid": "60df6b4f-bfbb-49c6-b049-787aff75d597",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-06-19"
  },
  {
    "uuid": "12e6a55a-1dad-4464-8152-a9603af41d11",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-01-08"
  },
  {
    "uuid": "b4e771c7-5081-4f3a-b0d8-8a8170265845",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-07"
  },
  {
    "uuid": "1eff56c7-f513-4117-97a7-e163108cbcfa",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-08-31"
  },
  {
    "uuid": "1416285b-bd6f-41d8-addd-a0c0abc36354",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-08-02"
  },
  {
    "uuid": "1f3ba033-d746-45ea-b05f-425560fd6897",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-22"
  },
  {
    "uuid": "628553d2-da60-4cdb-ab20-d08fe3003f94",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-04-15"
  },
  {
    "uuid": "de2b2724-0467-4627-a196-121771fc814f",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-15"
  },
  {
    "uuid": "a0c79ad9-b1a5-4c19-9f59-ab38e3d97089",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-17"
  },
  {
    "uuid": "21812435-f3bb-4b77-9305-4d11a41817d7",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-02-07"
  },
  {
    "uuid": "487d7a3c-5eff-4940-8526-c439fc3d3295",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-07-19"
  },
  {
    "uuid": "ebc29356-d00e-440a-88c0-5f8720ef4464",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-02-25"
  },
  {
    "uuid": "cb3f1d2e-947e-4d40-b089-90d7b1810b96",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-24"
  },
  {
    "uuid": "4a75ad0e-9070-40d8-8f8a-ab373b7a27ce",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-01-10"
  },
  {
    "uuid": "70e0bf17-ab2c-4ba9-afe8-424cdbb52d26",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-01-11"
  },
  {
    "uuid": "4fb7aef0-8d7c-40f2-bfad-6a46f095f064",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-04-22"
  },
  {
    "uuid": "4d4663bf-aba4-4266-b1ee-f5563c4d8158",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-09-05"
  },
  {
    "uuid": "af5179d0-9030-4044-8029-f734a594187c",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-20"
  },
  {
    "uuid": "e877a642-fcc1-474a-8e6e-4793f455c41a",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-25"
  },
  {
    "uuid": "ff36a27d-3457-4aee-adad-06fc069e7036",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-10-23"
  },
  {
    "uuid": "65ff74a1-5838-4852-9413-f5746d8e13fe",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-08-01"
  },
  {
    "uuid": "2032ede3-f6d4-48bd-a949-6ff27617f685",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-05-04"
  },
  {
    "uuid": "82bb85fc-d363-4296-8a86-d8d60881bb3e",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-05-07"
  },
  {
    "uuid": "6b65ea83-4fdd-46d4-83eb-bd002caffeca",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-09-21"
  },
  {
    "uuid": "907845bc-b551-4b83-9cc4-80cdd8047987",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-07-23"
  },
  {
    "uuid": "a2a13b76-c6e1-41ad-bd28-ce78509edd57",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-05"
  },
  {
    "uuid": "1bf5a6fe-0ce5-4d9b-81e6-c1d5c3023974",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-28"
  },
  {
    "uuid": "d62f4398-24c1-494f-a36b-fc514ee313d0",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-28"
  },
  {
    "uuid": "feca1cba-5221-4c27-a36d-aca034e32c9a",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-11"
  },
  {
    "uuid": "6dfbb6f8-c328-4ea3-a387-64711dab90f7",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-16"
  },
  {
    "uuid": "0fac6603-f692-449e-8a0d-144bd7ff1557",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-18"
  },
  {
    "uuid": "b950aaed-e201-4768-80ef-e5f9d3f9179d",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-12-20"
  },
  {
    "uuid": "d6b5454c-2429-4a41-9e27-035cc69125f0",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-16"
  },
  {
    "uuid": "43aa7c8f-cb33-40e2-96e4-4436e360187e",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-03-13"
  },
  {
    "uuid": "5160b9d1-14ea-427f-b192-f0cd9750c416",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-07-05"
  },
  {
    "uuid": "be0dfbe2-4da0-4fd1-b80c-b4e478541fb2",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-09-09"
  },
  {
    "uuid": "17a08336-c30f-4014-b724-e726be975f18",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-05-28"
  },
  {
    "uuid": "f470eeb9-e61b-48b8-b53a-e7461636bc8f",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-07-09"
  },
  {
    "uuid": "c596fd02-0ae8-426c-9ba3-ba35fe07f917",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-08-18"
  },
  {
    "uuid": "f90f0cb1-99a1-4ccc-9fa1-cc550a7cb904",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-04-19"
  },
  {
    "uuid": "0de14cbb-59cb-44cc-ab87-1b3cd0cf22d7",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-11-14"
  },
  {
    "uuid": "d97c4f2a-9f04-4e4e-bbd9-d73f95590c6f",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-07-03"
  },
  {
    "uuid": "00550567-d5ce-4511-bd4f-20d9685e4c08",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-08-30"
  },
  {
    "uuid": "02c1b03c-82f3-49b0-bbd7-eaf7da8fc833",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-25"
  },
  {
    "uuid": "20a95f23-2484-418a-8335-d3b84606e662",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-07-12"
  },
  {
    "uuid": "5bdefeb7-f058-459a-ad03-d5630d4ef84b",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-07-18"
  },
  {
    "uuid": "1da4cbea-d493-42b5-b92f-7221f2f3d281",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-03"
  },
  {
    "uuid": "19d6d002-9d90-4532-b126-44ca067a7f19",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-06-17"
  },
  {
    "uuid": "f00a94a2-08cf-4231-813d-a184637e1568",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-09-02"
  },
  {
    "uuid": "b24d2824-2002-4e1e-8bfa-89d0fbb589e4",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-04-25"
  },
  {
    "uuid": "0a4bc9f9-5e14-4c51-89af-6355a5418fea",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-05-14"
  },
  {
    "uuid": "907c3301-71fd-4f90-b582-7f8578f96bfd",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-02-01"
  },
  {
    "uuid": "22f64574-a49a-4f41-abc0-1a06ea978f66",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-05-06"
  },
  {
    "uuid": "9652ef48-b900-432b-97a2-4aa1d1e1768c",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-11-10"
  },
  {
    "uuid": "c6f80391-4f8e-4dd2-9086-864a3068a26a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-03-30"
  },
  {
    "uuid": "a5a2cfc1-40c8-4db9-9707-2708d6dd173f",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-19"
  },
  {
    "uuid": "b8c4ac2b-abee-47d8-91c3-67f471527ec0",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-04-15"
  },
  {
    "uuid": "703e6115-ef70-409a-9399-34abab059962",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-04-16"
  },
  {
    "uuid": "f694491a-b72a-4bfd-b197-3082a8d7b6be",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-01"
  },
  {
    "uuid": "f18dd149-dd69-4d7c-b8dd-fdd017ca14bf",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-02-20"
  },
  {
    "uuid": "e6265f00-1d38-4115-981c-4ac1030750a9",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-08"
  },
  {
    "uuid": "925c4055-1a30-4bff-9ac3-ea6c4bfbdadf",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-03-26"
  },
  {
    "uuid": "b2f56f85-72df-4430-b8a6-77911a7f4132",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-12"
  },
  {
    "uuid": "4d09aca1-d20b-4b88-bd2c-b13eda0f7173",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-04-10"
  },
  {
    "uuid": "15b0872a-83a1-4844-a328-748307134599",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-05-07"
  },
  {
    "uuid": "c9dbdde3-34d2-41e3-a6d1-9db410aadf36",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-10-10"
  },
  {
    "uuid": "23f4099c-cc50-4410-a1b1-56ddab1e7ba7",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-04-27"
  },
  {
    "uuid": "d85b558d-628b-4900-9dcc-1d8704f97131",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-05-24"
  },
  {
    "uuid": "42849bbb-3b6e-44f9-852d-8d4344c3f037",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-06-04"
  },
  {
    "uuid": "50e4a928-0c39-4769-9073-22649a30602d",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-02-06"
  },
  {
    "uuid": "9427d19c-1e72-4643-bebd-e53e56953620",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-08-29"
  },
  {
    "uuid": "f8f6c74c-663d-42e0-aa6a-ecb45261e92a",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-05-25"
  },
  {
    "uuid": "4f8e6b64-d9fa-41b4-a114-b7fa79fee2f9",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-05-04"
  },
  {
    "uuid": "fe0bfd30-0b05-4ffc-a583-2dc65870d508",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-07-24"
  },
  {
    "uuid": "a83be7e1-dd85-4bf0-9af2-8693b367390d",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-03-16"
  },
  {
    "uuid": "11e1ae2a-c58b-42b8-ab43-bbb9fe87c28e",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-20"
  },
  {
    "uuid": "088e39e7-2ca0-4b13-ab66-4bf72fce1f02",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-19"
  },
  {
    "uuid": "65350e71-8832-4f3d-91ff-b6ef24413b66",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-12-31"
  },
  {
    "uuid": "e206e5e5-ed9b-42d9-ae73-e9fdedc6e32c",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-04"
  },
  {
    "uuid": "26258e6f-7c66-4998-9001-77c9e1c581bd",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-27"
  },
  {
    "uuid": "d14896b7-4ccf-47f2-b5b5-3fcd799bb2ad",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-07-06"
  },
  {
    "uuid": "88c84970-bf0d-4b48-a53c-0c98e51aa4cb",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-24"
  },
  {
    "uuid": "8aacd252-ecf5-4762-b041-f58ae80f75a2",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-02"
  },
  {
    "uuid": "5976d529-8132-4f0f-8957-48914c0289be",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-04-27"
  },
  {
    "uuid": "1781031a-bb47-45df-b937-444a9d536f6f",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-28"
  },
  {
    "uuid": "1e22f4eb-4c10-442b-8128-6262222f23ab",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-15"
  },
  {
    "uuid": "6bef66ab-3414-484b-b569-8217a87e35c0",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-04-13"
  },
  {
    "uuid": "f01c0e1c-048b-41bb-b1eb-4df703656367",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-08"
  },
  {
    "uuid": "799af175-3fbc-4141-bebb-cbdd1dd17ede",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-06-16"
  },
  {
    "uuid": "b02e9dc9-194a-4450-8970-5d0aea6acd2c",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-28"
  },
  {
    "uuid": "1187657d-2225-497a-9052-f6e916eca685",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-08-18"
  },
  {
    "uuid": "242135f2-de82-47fb-8344-b94269dc6363",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-17"
  },
  {
    "uuid": "3d2b68b1-ac75-42f4-aa71-923b813e0384",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-07-01"
  },
  {
    "uuid": "312a7b2c-e95b-4917-9216-1c9b6e24d70c",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-06-25"
  },
  {
    "uuid": "b0585e16-6822-4f71-9392-0d52d6b730a2",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-01-04"
  },
  {
    "uuid": "b81b3cdd-3b5a-40b8-9c8b-e99af63244a8",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-05-30"
  },
  {
    "uuid": "dbfa1076-0b40-4c2e-b88c-29b3737886ea",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-04-19"
  },
  {
    "uuid": "733588a8-ba67-41cd-adb9-884bdd354ea1",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-09-03"
  },
  {
    "uuid": "8a6099d3-1a35-43a8-a62c-b39bb7e55091",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-09-09"
  },
  {
    "uuid": "8ab821d4-b558-45e2-b7e8-4f8f4763bbc3",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-09-22"
  },
  {
    "uuid": "cfb29a56-e198-4f45-b951-28751fe8ac24",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-02-13"
  },
  {
    "uuid": "e10fd02b-f143-420b-8c5f-31e151c2fe66",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-18"
  },
  {
    "uuid": "80d817de-11cf-4170-ae5c-2d9d1514877a",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-19"
  },
  {
    "uuid": "2ab97641-2234-4129-9909-cc3ea88c5627",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-09-12"
  },
  {
    "uuid": "67bd97c3-1c90-4c3c-b9cb-b93073032a23",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-07-18"
  },
  {
    "uuid": "b6efd754-fdef-4d6a-8cd4-ebf14cecc8fc",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-02"
  },
  {
    "uuid": "9b0ea41b-6045-4695-987d-167c5a7229e9",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-05-29"
  },
  {
    "uuid": "3e0dbe5a-5b19-40ff-9082-4106d94ad0d9",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-06"
  },
  {
    "uuid": "55253f57-33ca-433b-931b-ed9fb710dde5",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-26"
  },
  {
    "uuid": "3465ca17-591f-4eef-bb5f-dfae05bab38f",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-05-25"
  },
  {
    "uuid": "ee32d605-4a13-4cdc-9d8c-ce8f4f67daf4",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-07"
  },
  {
    "uuid": "c3eb2a92-edc5-4033-97d3-bc8592677d4a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-06-12"
  },
  {
    "uuid": "aa09c0f8-4b6f-40a5-a270-a68b508e1743",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-08-26"
  },
  {
    "uuid": "da55c8e5-b3fa-4c2a-967d-b6874ff8ace9",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-06-06"
  },
  {
    "uuid": "f5865071-e0ef-4544-a313-f986896e2b16",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-08-22"
  },
  {
    "uuid": "e3959107-2faa-4f1a-8cf3-efb77316a6cb",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-02-16"
  },
  {
    "uuid": "01a10b98-8a53-4b0b-9077-a6118cf17311",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-09-20"
  },
  {
    "uuid": "c31d381f-3834-48d5-a154-afac0b55a17b",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-11"
  },
  {
    "uuid": "d15cdfbc-5012-43a7-991f-24b3deff790c",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-01-21"
  },
  {
    "uuid": "e3ecd991-02da-484d-97a4-8eaf6733ce80",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-01-16"
  },
  {
    "uuid": "55502e23-a76c-431f-9207-793aaf5eefc8",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-07"
  },
  {
    "uuid": "461ea8ff-7f90-426c-a797-c2ee4a9e03a3",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-08-28"
  },
  {
    "uuid": "7114118c-98b3-40fa-980e-85961f077a41",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-04-12"
  },
  {
    "uuid": "8f38af3d-21f9-4391-9df0-d4b11f6ed9b6",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-16"
  },
  {
    "uuid": "90dc6c7d-1f2a-4a99-9d5b-a16806446356",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-09"
  },
  {
    "uuid": "00eace5d-d25f-483c-a93b-a936f45334b9",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-06-08"
  },
  {
    "uuid": "81b8dcf5-5bd0-4125-8de4-5005ee1b7bf1",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-11-27"
  },
  {
    "uuid": "db475292-7565-4958-868b-bc0ebfdab4d4",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-02-19"
  },
  {
    "uuid": "b658119e-795d-46dd-8d02-3057b2feb232",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-19"
  },
  {
    "uuid": "5bc7e866-d1e1-4538-a836-f1270b3ed4db",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-04-01"
  },
  {
    "uuid": "8ba2fda6-b812-48ab-870f-fdbef59bc084",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-04-27"
  },
  {
    "uuid": "24ed7d0a-897a-4072-bbaf-13f22135b825",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-10-19"
  },
  {
    "uuid": "9f2866e1-a6e1-4238-b5fe-a582d51c68bf",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-11-03"
  },
  {
    "uuid": "87c35305-7abd-4340-9302-562022ead86e",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-05-12"
  },
  {
    "uuid": "22642cab-3267-49d1-a6e3-276452a4c672",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-03"
  },
  {
    "uuid": "7a6de0a0-d688-41e3-9202-c6cdb42901fa",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-23"
  },
  {
    "uuid": "de2d0274-17b6-42f7-be50-6110c7a7f6f0",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-12-03"
  },
  {
    "uuid": "a816640a-aaf7-493e-a508-16e1e9fb6041",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-10-19"
  },
  {
    "uuid": "4b209e76-48b6-473e-9852-8cd07590679c",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-29"
  },
  {
    "uuid": "e1ed2ee8-5b92-40b8-bd29-0a76b2d9d2da",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-19"
  },
  {
    "uuid": "8bde3620-146d-46bf-953c-da97f3218d65",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-03-05"
  },
  {
    "uuid": "b7c08e3d-c8d6-4745-83d2-5dd7ba579f76",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-03-06"
  },
  {
    "uuid": "cc2b2666-9315-4c87-a957-2c2c9c9f0477",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-21"
  },
  {
    "uuid": "04181a69-0707-439c-84d3-0ead90e3b14f",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-07"
  },
  {
    "uuid": "8171ed81-bac5-4971-a40a-88de74e420fe",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-01-14"
  },
  {
    "uuid": "347c6335-d847-4c79-8903-a1fc7559e519",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-05-05"
  },
  {
    "uuid": "ecbfb075-a68b-4853-be81-517301936957",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-14"
  },
  {
    "uuid": "f6255c9a-08ad-460d-a5f8-7f1271b6dae5",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-11-19"
  },
  {
    "uuid": "60278606-3f95-42ce-a744-c40c356e9c71",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-25"
  },
  {
    "uuid": "6b71a287-0a29-4308-bcaf-1a99f4a3a425",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-07-26"
  },
  {
    "uuid": "34e8216f-0aa9-46f2-8e7c-bb122a2d7a44",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-04-21"
  },
  {
    "uuid": "44be04f4-45fd-4b95-b7b3-0f070e9c2462",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-05-28"
  },
  {
    "uuid": "479763cb-4557-4873-93b5-fcd37347d357",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-11-03"
  },
  {
    "uuid": "fd0d63dc-641c-4725-8a12-f7cd92b29f41",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-19"
  },
  {
    "uuid": "e3dd22b9-a6c9-47b2-b620-827271c2dbde",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-02-01"
  },
  {
    "uuid": "5483a152-3b63-43bf-9ca1-87cc2559fc36",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-08-23"
  },
  {
    "uuid": "b02b3d04-e9cc-4961-a1f4-619d810bfa6e",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-06-02"
  },
  {
    "uuid": "028581dd-e89d-4963-82d7-df397c8fae91",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-01-05"
  },
  {
    "uuid": "19a7db47-2c1e-4b55-a2f8-decc8fcdf878",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-08-24"
  },
  {
    "uuid": "a0820313-a371-4e1e-9c98-baa6e507f20b",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-01-09"
  },
  {
    "uuid": "43625868-9d1a-455f-be9b-a8739c759264",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-11-05"
  },
  {
    "uuid": "7694daa1-6662-4fff-a7f9-89124941fefd",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-05-02"
  },
  {
    "uuid": "4fa2050e-9ebf-487d-9cb3-b8d6916403eb",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-27"
  },
  {
    "uuid": "28d35e2f-9b7d-4f13-a265-bff5d4e5f346",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-08"
  },
  {
    "uuid": "9be2dc4a-dbba-4da2-b092-3a9f2fc898b6",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-10"
  },
  {
    "uuid": "43099889-2e4a-4be6-8b72-3b66b5833f40",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-01-04"
  },
  {
    "uuid": "b647494a-3795-4aa8-9914-4ea6ccc3d029",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-06-19"
  },
  {
    "uuid": "661ccc73-0bd7-46fd-89bd-6cb304fe9ec3",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-13"
  },
  {
    "uuid": "0e930ef6-2574-4a09-a020-0af6bd17c1fa",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-06-18"
  },
  {
    "uuid": "17a17bc7-cf14-4c41-892b-1288b87a27bc",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-24"
  },
  {
    "uuid": "6b2652cb-451f-42ce-a9b2-bf121dc526a6",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-05-08"
  },
  {
    "uuid": "e07d04d1-a899-4f28-b15e-6d05656f28a9",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-06-04"
  },
  {
    "uuid": "44973d52-b6ab-47d0-b5b5-ad562e838b45",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-09-02"
  },
  {
    "uuid": "a4e52001-2cc1-48ca-a158-3458e4611161",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-01-19"
  },
  {
    "uuid": "079ce834-e985-4bec-ae3f-bbd5d1c59388",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-06-15"
  },
  {
    "uuid": "910be595-9413-45c2-bc15-910af3bdc10a",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-11"
  },
  {
    "uuid": "c6d354b7-f24a-4955-bf48-8dc0a2dcd24b",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-30"
  },
  {
    "uuid": "7c076642-5366-44c5-b220-c66afee9f9d1",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-01"
  },
  {
    "uuid": "09762a7e-cddb-4a08-83d8-26fee5cbe6af",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-07-28"
  },
  {
    "uuid": "c62504e1-5e25-4412-9080-24df39061df8",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-09-06"
  },
  {
    "uuid": "254be051-9400-454b-8aba-8b9bb8004ebe",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-11"
  },
  {
    "uuid": "20b78127-f4d2-4c12-a436-f447c6cf63d5",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-25"
  },
  {
    "uuid": "12e14a64-329b-4d4d-90eb-a7852d088401",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-04-12"
  },
  {
    "uuid": "ecebd7d2-4fe5-453a-b3fc-6401bd44b525",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-09-03"
  },
  {
    "uuid": "4626f933-6c57-4484-a0ea-d53fdfbeff70",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-03"
  },
  {
    "uuid": "698703a8-e6c8-4f7e-8b76-6cc7c3e8d02a",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-24"
  },
  {
    "uuid": "8f980f56-8cc6-41fc-a552-b74ecdf43aea",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-22"
  },
  {
    "uuid": "f3594780-73cb-46fe-b941-61170d141a6b",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-11-06"
  },
  {
    "uuid": "e56d33fe-de7b-4139-8b7a-b03e0c3a85ce",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-01"
  },
  {
    "uuid": "b8083b98-9d6f-49f7-b833-187d79218412",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-03-04"
  },
  {
    "uuid": "bac53c50-26a1-47ea-b93c-3b0b68adf83d",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-07-18"
  },
  {
    "uuid": "a55a91e8-b8d0-4a83-8b29-206cd4e82513",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-06-24"
  },
  {
    "uuid": "8f3ade72-863a-4bf3-b0b9-f453b6ba8a56",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-12-10"
  },
  {
    "uuid": "ae8e499a-9e91-483c-b165-64d82b27b550",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-09-23"
  },
  {
    "uuid": "1ce7be55-70ea-43cf-8604-0f1648875c50",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-01"
  },
  {
    "uuid": "2218094c-42eb-4b58-bbda-5ad222aae7dd",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2019-01-28"
  },
  {
    "uuid": "d484b8ce-a5fe-4249-9167-08b400a632d7",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-31"
  },
  {
    "uuid": "2ca0b2c8-51b5-4a2e-961a-7b47e3b60d70",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-22"
  },
  {
    "uuid": "2f248d22-d87b-468a-8c50-772b2506b8da",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-07-09"
  },
  {
    "uuid": "1acbe94f-f0de-4502-9a2a-4482310daee1",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-03"
  },
  {
    "uuid": "cc9635b3-4f78-412b-a2bd-e2a219537ad4",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-01"
  },
  {
    "uuid": "c81151a7-bdda-448e-8bee-483e8f2e665e",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-08-13"
  },
  {
    "uuid": "b4658d0b-baf7-4b58-9c0a-6eb95e6c7b07",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-08-01"
  },
  {
    "uuid": "76a7e3af-2ad3-44d6-b645-b136a2072125",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-03-05"
  },
  {
    "uuid": "1efa2891-4943-4986-899c-357839917edc",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-03-31"
  },
  {
    "uuid": "00cff3ab-acbb-419b-bb67-2ad1bae3f704",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-12"
  },
  {
    "uuid": "eb57dd89-0676-4ea0-864f-ab01be5992a2",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-01-11"
  },
  {
    "uuid": "a9f60819-2309-4b17-852a-25257685b410",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-26"
  },
  {
    "uuid": "6f8c0234-6fa5-4b44-9de5-6b1f97be13e8",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-05-30"
  },
  {
    "uuid": "ee245450-add4-41d5-adb5-22f7f0c4c2b6",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-09-18"
  },
  {
    "uuid": "488b1fa2-57e2-4b5c-97c9-a4d2aa63fd0f",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-12-12"
  },
  {
    "uuid": "578f9c0d-70b3-473d-8058-019b059a4e42",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-01-31"
  },
  {
    "uuid": "0373b96a-7f86-47cc-b891-be54809978b8",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-05"
  },
  {
    "uuid": "b80d7d10-114b-450b-957d-3e57558179ac",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-28"
  },
  {
    "uuid": "b8c7909d-c130-40ec-8b42-dcb174fd34ae",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-18"
  },
  {
    "uuid": "76da55f8-cf0e-43b5-a15a-8199c3aa510c",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-08-03"
  },
  {
    "uuid": "a0d491ee-c813-4ca7-9102-d71029ebbe5c",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-06-30"
  },
  {
    "uuid": "6d531115-27de-42dd-9ae7-8eba96a3a6f5",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-04-17"
  },
  {
    "uuid": "0240aa85-5bdb-4279-af5d-b89eac8fde7f",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-01-27"
  },
  {
    "uuid": "0c276ffc-2c4b-4f85-8280-78805ffaded6",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-26"
  },
  {
    "uuid": "020fa319-38f5-40d0-9f9e-72235a1d9163",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-06-15"
  },
  {
    "uuid": "8d18cb55-b5fe-4585-98ec-4311b316e1df",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-07-18"
  },
  {
    "uuid": "849b3485-6b25-4444-8a8e-f15161cde3ff",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-09-08"
  },
  {
    "uuid": "c47993fa-af00-412c-b8c7-704b13565174",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-01-19"
  },
  {
    "uuid": "6965efa6-ed6c-4882-b280-c8bfe3e4492c",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-07-15"
  },
  {
    "uuid": "a83188f3-da8a-4c0e-b53d-5521aca553c7",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-05"
  },
  {
    "uuid": "37399847-f96a-428d-8b26-d33eae2c2d8d",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-03-15"
  },
  {
    "uuid": "0b25d913-e329-46f6-a07a-d4a47f9cd306",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-10"
  },
  {
    "uuid": "5d68895f-e4a1-4776-a512-97a133307423",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-09"
  },
  {
    "uuid": "faa32a0f-69fe-4dfe-8e5e-46107cfba892",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-18"
  },
  {
    "uuid": "bae62a88-76c0-499e-bd88-411113cec2d4",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-03-08"
  },
  {
    "uuid": "18be6f5d-7182-40e1-a81e-46eaabdb251c",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-23"
  },
  {
    "uuid": "8f954104-9d07-412f-877c-28218154eb23",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-27"
  },
  {
    "uuid": "4e5a5f8b-1031-427a-bc23-2208f12f2d83",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-28"
  },
  {
    "uuid": "ca83a84e-fa52-41f2-83d2-9401615f7721",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-07-28"
  },
  {
    "uuid": "312a8fd8-6124-4d0c-9993-d93136dc37f2",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-11-20"
  },
  {
    "uuid": "443448e8-5f9b-473c-8732-fe6e7f69d3fb",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-05-26"
  },
  {
    "uuid": "ba1f8d40-5a88-4c4f-9734-29fd0e2b2cc5",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-01-03"
  },
  {
    "uuid": "ad7c959f-0f71-4bf0-a9d3-4d0d2125e49e",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-01-20"
  },
  {
    "uuid": "e62b827d-d39a-4f16-9ebc-a69e4781d7d6",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-05-17"
  },
  {
    "uuid": "9abe31de-74d2-415a-b3ba-09cd3f18b95d",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-02-21"
  },
  {
    "uuid": "e5945aa8-0e4b-4835-9b22-7950bf7c0e8d",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-09"
  },
  {
    "uuid": "f1dbd702-6422-4391-aa5f-3874141a586e",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-09-28"
  },
  {
    "uuid": "01f1a39c-0c84-44ab-b708-9742ceb02201",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-10-24"
  },
  {
    "uuid": "1d847e2f-263e-423d-8bbe-5faa2ecb1f55",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-07-17"
  },
  {
    "uuid": "451ce4ae-b866-4c85-8774-7eba3c72a5c6",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-06-03"
  },
  {
    "uuid": "6befbeff-fffa-492c-893a-6d3feec68a39",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-01-24"
  },
  {
    "uuid": "9a5d242f-6799-41c3-8aff-e1f0475e5bc3",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-03-27"
  },
  {
    "uuid": "73a61f98-1cff-4fab-89ce-d0e4e7334394",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-06-09"
  },
  {
    "uuid": "bfbc561a-135a-4dc1-8efb-efd992c54974",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-06-04"
  },
  {
    "uuid": "cf45f776-203e-4ee8-abaf-7a39fd6f1b60",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-17"
  },
  {
    "uuid": "e57dc638-8f09-4d1d-b929-969885b8171f",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-06-01"
  },
  {
    "uuid": "2d29e330-4089-4c15-8f06-4d74d19b0cc8",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-03-13"
  },
  {
    "uuid": "07870f1f-89a8-46e4-aa51-6a20dfeedd52",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-08-29"
  },
  {
    "uuid": "fc9b3439-51c4-486d-ab32-731a6f553a8a",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-26"
  },
  {
    "uuid": "25cd2e99-1c0a-4891-820f-e09e520ea158",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-04-08"
  },
  {
    "uuid": "714c68f8-43b8-4fac-8fab-8b2eccbd3a86",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-04-24"
  },
  {
    "uuid": "462d0996-cd79-44b1-ba8b-22403753e53c",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-28"
  },
  {
    "uuid": "9a1b92a5-889b-4dbb-aa53-e5f3445e8e10",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-20"
  },
  {
    "uuid": "29d8353b-c0d2-4e04-91bc-537b63ebcb79",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-05-22"
  },
  {
    "uuid": "a60fcff5-042e-4192-a9e8-cba8e2d5d292",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-05"
  },
  {
    "uuid": "fa6e7bfe-406a-447f-b5a9-9ec58ae18b5d",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-01"
  },
  {
    "uuid": "183dba42-b6bc-40fd-a069-5375ef8c83fe",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-23"
  },
  {
    "uuid": "1270f0a2-564b-4283-86af-54c40c58431e",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-09-18"
  },
  {
    "uuid": "4a5ca660-2e36-4b95-b54c-97e326c88af9",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-26"
  },
  {
    "uuid": "687a8deb-5dd6-4aff-9437-24db4e3c0acc",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-15"
  },
  {
    "uuid": "baf602e9-fb2a-4c89-9d1a-37a04e1685cf",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-05-02"
  },
  {
    "uuid": "c9f30eb6-8dc1-40f6-be17-e0e628dbe716",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-08-28"
  },
  {
    "uuid": "25c8d6f9-eaac-4ce7-8445-5e626770b51e",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-12-13"
  },
  {
    "uuid": "20c8705d-7a04-4e13-85ba-84cfb1a1f5d0",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-06-19"
  },
  {
    "uuid": "a41423a9-55ba-4403-9fec-6e99e2ce5cd0",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-04-22"
  },
  {
    "uuid": "03c45a0e-59ab-42b0-9f94-d6de50689bfa",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-01-25"
  },
  {
    "uuid": "f315b6f1-a871-4e22-8577-c90d6df1f3d0",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-04-11"
  },
  {
    "uuid": "822a5010-4487-426b-aac4-e685243cfcd3",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-23"
  },
  {
    "uuid": "92ff6067-4bcf-4a11-8a11-23d92c919c15",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-05-29"
  },
  {
    "uuid": "d2d9178e-418b-44f2-811d-4802a60fd661",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-24"
  },
  {
    "uuid": "ecdbe15c-f14b-48e6-ae88-f70e1d1faa87",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-07-06"
  },
  {
    "uuid": "44797633-d91c-44c9-82a3-000466d3566c",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-07-10"
  },
  {
    "uuid": "a7c6ae61-3c3d-4315-9aa9-2627b4ebfdb0",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-09-06"
  },
  {
    "uuid": "dd5a88bb-72bb-4689-baa0-f55de315245f",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-01-28"
  },
  {
    "uuid": "2a944b75-a640-4f35-85bb-d6101df2b254",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-04-09"
  },
  {
    "uuid": "2a796e4c-7628-43c2-8730-48a7fd3fb9c0",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-29"
  },
  {
    "uuid": "435f62c5-3d35-4bbc-ae0f-d4801907eb02",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-08-16"
  },
  {
    "uuid": "7c1561e8-eff2-4664-aaa9-eeb39e9152dd",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-07-26"
  },
  {
    "uuid": "42d2a0e6-5d75-410e-a793-b6d900a3d509",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-09-29"
  },
  {
    "uuid": "660971e2-9149-41cb-909c-08d2a73c2a7c",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-05-27"
  },
  {
    "uuid": "3ffa0360-650a-4e1f-b7b8-13b7383218cc",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-09-02"
  },
  {
    "uuid": "985decf7-8430-4cf1-920b-74924e026dab",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-12-23"
  },
  {
    "uuid": "c6a67fee-7434-4e13-8de9-b7fc9a989e05",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-01-24"
  },
  {
    "uuid": "575e6066-03a3-497c-b8b3-5960becd004f",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-19"
  },
  {
    "uuid": "a69d9bea-4e07-4632-b137-5c3f5a3bd5c3",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-01-17"
  },
  {
    "uuid": "9f915d38-f6ca-4353-ab70-4e62a4714ed3",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-30"
  },
  {
    "uuid": "821a16a5-2b3a-49e6-b197-da16731b70be",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-05-31"
  },
  {
    "uuid": "2222ac57-dbfc-4d15-9e7f-6c5a6afabccf",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-01-17"
  },
  {
    "uuid": "cbec8042-e66a-4a13-8c97-adaf4aa8b08c",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-09"
  },
  {
    "uuid": "83a2ea7f-87c5-4626-9b1d-f1e9bde5be6e",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-09-09"
  },
  {
    "uuid": "3568a39d-73d7-44e2-ae91-04c0f3c5bbc2",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-11-15"
  },
  {
    "uuid": "20cd1d06-9bd3-4a1b-86a7-3937d7559753",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-04-26"
  },
  {
    "uuid": "c35e5d7e-ea54-4366-993d-b69235280db5",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-12-04"
  },
  {
    "uuid": "e718dd3c-7fc9-4573-8f16-dd5e200a9f60",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-01"
  },
  {
    "uuid": "875265de-103e-43a0-aaa0-90f079e34f2d",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-05"
  },
  {
    "uuid": "701e0733-fbfe-4cf0-bd13-420e7f571395",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-06-28"
  },
  {
    "uuid": "27a504ef-f06b-4af2-bcfd-9e35dcf03754",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-03-05"
  },
  {
    "uuid": "ae368799-24d6-4ba5-a741-315e9cc4856c",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-11-05"
  },
  {
    "uuid": "95886986-c9f7-4098-8582-a30ac7cad3b3",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-07-31"
  },
  {
    "uuid": "b8f662b6-423a-48a2-97f7-a8cc085e07ae",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-01-16"
  },
  {
    "uuid": "d3d6ee2e-e7d9-49b6-a0e1-9577e421317f",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-05-19"
  },
  {
    "uuid": "fe650d66-bbaf-4be9-b87a-aa0aa057cadc",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-03-07"
  },
  {
    "uuid": "fcf14370-f10c-486a-97a2-8b9b3b921e64",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2019-02-01"
  },
  {
    "uuid": "f91b6aae-d79d-4ae3-a3d8-3a5e7df380d9",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-07-28"
  },
  {
    "uuid": "7eb9d26e-0a8a-48b5-822a-54a56d5ca3ed",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-01-24"
  },
  {
    "uuid": "ca87da60-1c6d-4550-82d4-f966d385542d",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-02-04"
  },
  {
    "uuid": "4bdb1f96-3589-4f24-b10d-639425875e99",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-07-04"
  },
  {
    "uuid": "fbf071c2-20da-477d-a6b7-0b60c72ad27d",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-09-28"
  },
  {
    "uuid": "901c16cc-2f71-41b4-888b-7fc414c7674e",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-12-15"
  },
  {
    "uuid": "91695d29-7e83-46ef-82b1-bd759ecce0ec",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-07-28"
  },
  {
    "uuid": "43bd9ae1-e67f-4a47-820a-c2ce181a362c",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-09-18"
  },
  {
    "uuid": "34b5c315-f228-4fcf-989f-19aae7889b00",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-03-28"
  },
  {
    "uuid": "343c4a66-c097-4f97-820d-5a855bf403da",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-01"
  },
  {
    "uuid": "eeff0966-cd3b-4889-bc3b-de330cbc8b21",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-07-23"
  },
  {
    "uuid": "3fb5c9cd-34bd-4f36-99a6-7bcabb69fab5",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-17"
  },
  {
    "uuid": "220cda8d-501b-40b1-a278-92a9ddf49514",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-04-26"
  },
  {
    "uuid": "8785030a-c16c-45af-9add-5ebcc82b12d6",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-10-13"
  },
  {
    "uuid": "90d0f773-63cb-4dfe-8ba1-3b4bd1d0d5e4",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-04-30"
  },
  {
    "uuid": "95f70196-cc7d-460b-b809-b528e7efc8cb",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-04-20"
  },
  {
    "uuid": "fa35bac5-8d2d-4b39-b4b3-da991a4f8b47",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-09-14"
  },
  {
    "uuid": "8b91248a-a86d-4581-a74a-b17fad148a43",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-02-18"
  },
  {
    "uuid": "fcdcf551-27ee-4e51-904d-b153e0ad5a60",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-01-15"
  },
  {
    "uuid": "72e052ed-0ddb-4265-bf66-ef25c35107d4",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-11-11"
  },
  {
    "uuid": "d2012531-5e7a-4084-b285-599e6fe81da7",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-09-02"
  },
  {
    "uuid": "5731f74b-5ad6-4c64-ad31-2169b1bcb4ef",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-06-19"
  },
  {
    "uuid": "7b445f6f-dba9-4639-bf61-388a41fd1643",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-27"
  },
  {
    "uuid": "0b360575-6c60-4255-ad50-8cd1a01c30e1",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-12-12"
  },
  {
    "uuid": "7ae21f2e-5817-48ce-abe1-6364625ea46b",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-05-07"
  },
  {
    "uuid": "6301f731-0da9-475f-bd29-718df2235cac",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-04-16"
  },
  {
    "uuid": "aef61b6c-dd07-4d9c-bd69-bd2b811950d6",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-05-08"
  },
  {
    "uuid": "9911e68d-b141-4a9d-91ac-880d31637e97",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-08-12"
  },
  {
    "uuid": "cad9178c-ec33-4f63-a150-2028959b0237",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-06-03"
  },
  {
    "uuid": "841b4e07-c6cf-4a64-bdbd-e6da8444f3e3",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-12-08"
  },
  {
    "uuid": "4bbd71ca-5eaf-4183-8fde-0bec782d14b0",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-08-10"
  },
  {
    "uuid": "9beebf3f-769a-451b-9910-a9e256ac4b04",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-02"
  },
  {
    "uuid": "9b386713-10ea-44d1-82ac-5cdf490671f6",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-11-13"
  },
  {
    "uuid": "b5c75a5c-46bf-4255-95ed-2d960d04ebbc",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-17"
  },
  {
    "uuid": "9dfce32b-a467-4159-8b1f-806caa1f3a83",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-08-12"
  },
  {
    "uuid": "a38247eb-2292-49fa-bf27-0e1dc2b8bd60",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-23"
  },
  {
    "uuid": "70bcaba4-ed39-41c8-a8f0-6e2dc5918aaa",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-07-05"
  },
  {
    "uuid": "10a106f5-4e95-4525-a991-85ef83e50df7",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-13"
  },
  {
    "uuid": "95a5d0d2-961f-4b36-9816-7a896d647aaa",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-03-20"
  },
  {
    "uuid": "e1acb011-bc18-48e1-b571-7c1e42d99291",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-16"
  },
  {
    "uuid": "b8230346-837e-4939-975d-ec2a0911eccd",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-08-26"
  },
  {
    "uuid": "961c09e2-643b-4a05-9e43-b41d258b278a",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-12-12"
  },
  {
    "uuid": "825e86d5-1c15-4a03-8542-e72d514a76d8",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-01-07"
  },
  {
    "uuid": "09699499-d3fd-4572-9cf7-2aa75b8e9a70",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-02-26"
  },
  {
    "uuid": "56d9f1dc-c436-4f5f-90c2-0674be408160",
    "bar_name": "Yours Truly",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-10-24"
  },
  {
    "uuid": "22568435-2fe4-407a-9391-1e86b891aa1a",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-30"
  },
  {
    "uuid": "14187c93-6398-4db4-9b0e-d457a6df16fc",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-02-22"
  },
  {
    "uuid": "45187232-24f5-4255-9677-e26ec39ce876",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-31"
  },
  {
    "uuid": "230eac99-6a2d-48d9-b8e0-f01db3dd744c",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2018-02-19"
  },
  {
    "uuid": "805afdbe-9fac-4877-b3c0-989f8f2652d3",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-04-18"
  },
  {
    "uuid": "0e3df3ef-6bdf-45d5-96db-708685067383",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-12-01"
  },
  {
    "uuid": "1c2abe57-6aa3-4f3a-b58c-de090282ff0b",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-05-04"
  },
  {
    "uuid": "0888376b-4b2b-45bd-826c-7be723a7c900",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-03-15"
  },
  {
    "uuid": "b3d8a230-c9b9-4a20-a662-a36ebadfe4c0",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-04-18"
  },
  {
    "uuid": "d8765209-f214-47cb-bbb5-51718b4aba72",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-05-01"
  },
  {
    "uuid": "86df7914-56f6-4cc5-a4a1-4c9017c1d16a",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-12-23"
  },
  {
    "uuid": "85f90874-a7a9-4cd2-b3de-7d2c692ad74f",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-07-11"
  },
  {
    "uuid": "b78aa8eb-f077-4eac-b2ba-a6a7f127207e",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-09-12"
  },
  {
    "uuid": "38930682-19fe-4964-a8d8-4f214d14f5eb",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-11-13"
  },
  {
    "uuid": "10feacd5-4e83-4696-a680-62051c06e7a5",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-19"
  },
  {
    "uuid": "99979037-b92f-4fb5-9543-01c9b5fdcd7b",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-08"
  },
  {
    "uuid": "f2405ea6-2532-47ad-8e84-b0db58e2531d",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-09-14"
  },
  {
    "uuid": "70ca8bf4-084a-40e2-a854-b08bffa90259",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-12-20"
  },
  {
    "uuid": "323a4e83-6370-42fc-8946-75f0d8f0bcb3",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-09-08"
  },
  {
    "uuid": "66ce4a8c-7339-4c7c-9696-823822ee472f",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-03-05"
  },
  {
    "uuid": "0b8562a1-99ad-4acf-9192-3920df9156e1",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-02-28"
  },
  {
    "uuid": "6a7fa40e-5f1e-4af8-8eff-37d42f1de621",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-11-17"
  },
  {
    "uuid": "f7ed1451-2a4d-4fcc-a259-ea22e026e787",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-01-17"
  },
  {
    "uuid": "de99ac72-db0d-4eaf-9e7e-d58ee502ccb5",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-06-20"
  },
  {
    "uuid": "a6f7ca7e-fc37-4801-8f2f-81c69744ee1e",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-20"
  },
  {
    "uuid": "6e95e091-35a2-462f-a3d3-67df4fc6fb85",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-01-17"
  },
  {
    "uuid": "9fd66395-2ae8-4624-97c3-511af04b7b80",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-06"
  },
  {
    "uuid": "c71c2b2a-c9c2-4090-a157-5eff5e00c864",
    "bar_name": "Tiger''s Milk",
    "drinks": 4,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-07-28"
  },
  {
    "uuid": "256600da-7c6a-4e26-857b-35cc66be1a33",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-09-25"
  },
  {
    "uuid": "1fe8b4ec-7f93-462e-a79c-3246b1de5e3c",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-05-05"
  },
  {
    "uuid": "522f9de3-1e55-4263-9059-403c9bd872a0",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-06"
  },
  {
    "uuid": "052669be-10ea-4f2e-a8dc-2aa04fef46ee",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-03-28"
  },
  {
    "uuid": "ae7b9976-1a02-4b1e-9b0d-a35e15427597",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-09-24"
  },
  {
    "uuid": "8fd14966-591f-4e72-8947-5b0dc2dded35",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-11-01"
  },
  {
    "uuid": "47044296-4634-4f98-91ad-500f05d586ed",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-06-07"
  },
  {
    "uuid": "66684539-6fa9-4eea-8c8d-d487fc31bf81",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-01-12"
  },
  {
    "uuid": "3656e031-4833-4a6b-b4d5-c8d9709926d9",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-16"
  },
  {
    "uuid": "9ee52e52-436d-45b1-bf73-09c0b6b6e3c6",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2019-06-20"
  },
  {
    "uuid": "17a9a8cb-b9e7-4d4c-aabe-4c4974f107c6",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-08-14"
  },
  {
    "uuid": "7206029e-95ab-4ac7-8c1b-3f0ce841d9b6",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-06-22"
  },
  {
    "uuid": "9c4544a6-ab0b-4bb6-942c-fba9163c68a1",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-19"
  },
  {
    "uuid": "d632d0b1-c49e-4df8-9e8d-dcb79db4e96f",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-08-19"
  },
  {
    "uuid": "bbdb4d76-424b-4cd6-b3eb-97126b53075c",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-01-06"
  },
  {
    "uuid": "ed5e08e2-b31e-4ae4-9fc0-57fb636e5656",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Buchanan''s",
    "happy_hour": true,
    "visited": "2019-02-28"
  },
  {
    "uuid": "51c66715-4d71-4425-9904-87b5802be699",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Buchanan''s",
    "happy_hour": false,
    "visited": "2018-09-08"
  },
  {
    "uuid": "3e98bad9-e5f5-45d8-aee7-7c9c4e533a44",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-10-10"
  },
  {
    "uuid": "57ac6067-cd15-4ac2-9ac9-0a35c9c297c2",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-06"
  },
  {
    "uuid": "e99ea720-cd23-49f0-84cc-1481bafb6cfd",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-10"
  },
  {
    "uuid": "b0ce781b-7810-4e46-adf6-a692f0c2c7da",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-05-20"
  },
  {
    "uuid": "90209008-feab-4e10-93f5-fb175f281705",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-01-10"
  },
  {
    "uuid": "81175ee3-2102-4e0b-bda4-f57837f8480f",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-07-06"
  },
  {
    "uuid": "62790ffd-11a7-4e33-84db-343797e6fc50",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-09-09"
  },
  {
    "uuid": "588d67d8-a37e-4cfb-8c00-f3d672dd01b7",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-11-10"
  },
  {
    "uuid": "05a1e52e-0f1a-48be-bf01-b72bd7152d65",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-04-15"
  },
  {
    "uuid": "fa6563de-06e5-4cc5-aee7-614a2ebf71e0",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-26"
  },
  {
    "uuid": "6ca6fa3b-a072-45da-b9f3-8e0bfd696cbb",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2018-12-18"
  },
  {
    "uuid": "d6d7426d-abde-4fdf-a1ae-1e8b6050279f",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-06-11"
  },
  {
    "uuid": "23c907df-f1a3-4e0a-8589-728744f0083c",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-12"
  },
  {
    "uuid": "8cbc0910-d7b8-4889-8432-9a16bf32d325",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-07-06"
  },
  {
    "uuid": "0d61d70f-d443-47de-bce7-cc03df0ba3da",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-08-06"
  },
  {
    "uuid": "f640e283-46bf-4d32-a3ec-92186fa1aaa7",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-05"
  },
  {
    "uuid": "0cbe120b-2fbb-4b90-bf1a-cc8570a744d8",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-07-29"
  },
  {
    "uuid": "4b6ddf06-88bf-4121-b61a-ae3ca4c98cdf",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-04-23"
  },
  {
    "uuid": "663c30c0-701a-4d7e-945b-8a4cc7d649cd",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-08-27"
  },
  {
    "uuid": "09ada109-e0b1-4045-a9c1-c4f1c7ea1fe5",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-06-13"
  },
  {
    "uuid": "b7102865-a11e-4cde-a4bc-9bfa3cfa7e6c",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-03-15"
  },
  {
    "uuid": "eb1e54bc-6971-42ee-9601-402ff1428bfc",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-03-31"
  },
  {
    "uuid": "1635e895-40f0-4da3-84cd-1a5f4b6e596f",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-09-11"
  },
  {
    "uuid": "be12877f-8c8d-4b64-9a7b-8ff51f8f541f",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-03-06"
  },
  {
    "uuid": "cc891930-71e1-48dd-a708-b53c045afa69",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-12-02"
  },
  {
    "uuid": "d0504e7a-7918-43df-820f-047e5bca9e7e",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-08-26"
  },
  {
    "uuid": "0dfef0d1-c2cd-46eb-a91a-b489a62778da",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-05-22"
  },
  {
    "uuid": "5f9ac934-f2d2-43c5-af18-5f180f221c37",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-05-15"
  },
  {
    "uuid": "46564cd1-d827-4030-ac8d-1a474fad011c",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-09-19"
  },
  {
    "uuid": "815fa9f4-4760-4065-95a8-fbda639a15ef",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-07-07"
  },
  {
    "uuid": "c6539494-b9fc-4ed6-84fe-bb123814d85a",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-07-23"
  },
  {
    "uuid": "36dad2b7-395d-48c1-9fad-ce7a6474fdc9",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-03-03"
  },
  {
    "uuid": "ccd6a599-23be-47e7-bc6f-d435a7f4843f",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-06-05"
  },
  {
    "uuid": "04361abb-49d2-47ac-aa8b-0992010c7996",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-05-08"
  },
  {
    "uuid": "51dc6305-030c-41f7-8d50-004248be56ca",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2019-09-06"
  },
  {
    "uuid": "68c1699a-4bc8-4e6c-99d8-1ea4474851db",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-03"
  },
  {
    "uuid": "a915ec1e-d803-4065-8a8e-3004f771c8bd",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-04-07"
  },
  {
    "uuid": "c1d18d55-6cb2-4299-923e-d7df2b2a971c",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-01-06"
  },
  {
    "uuid": "76177ca5-4267-47bc-bb35-51789c45db33",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-09-16"
  },
  {
    "uuid": "6fd123f9-d570-417e-9fb8-8d1817ab42f7",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-06-14"
  },
  {
    "uuid": "022b1ca4-5a42-463f-9cf3-5eaeb0360afd",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-08-01"
  },
  {
    "uuid": "b4d388ea-a15f-40f3-8f2e-c7956e977b66",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-27"
  },
  {
    "uuid": "f8255bbf-c264-47b7-91e1-df27b992764b",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-07-12"
  },
  {
    "uuid": "13dc8a83-1047-42ea-8d8d-4714ead1a534",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-06-21"
  },
  {
    "uuid": "132e37f1-56b9-46ac-8337-84ce98ef523a",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-11-09"
  },
  {
    "uuid": "0aa8eb6a-625a-41b2-b852-043a5b4805c2",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Stella Artois",
    "happy_hour": false,
    "visited": "2018-09-26"
  },
  {
    "uuid": "1baa97bf-c0b3-4da1-b0d0-f300094e540d",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-04-29"
  },
  {
    "uuid": "eed79c19-2014-41da-a302-aa2c45d6c9f3",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-09-19"
  },
  {
    "uuid": "c558db6f-e9dc-4c98-96dd-f3df14c0dfc3",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-06-03"
  },
  {
    "uuid": "4b51df41-9a9f-488d-8cde-c1eaf91ecdae",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-09"
  },
  {
    "uuid": "cf8d9955-6708-4aad-bc87-9655ffa25ef1",
    "bar_name": "Yours Truly",
    "drinks": 5,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2019-09-01"
  },
  {
    "uuid": "55065b43-5773-4021-8e57-8aef3815d0b1",
    "bar_name": "Cubana",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-09-13"
  },
  {
    "uuid": "43b2da86-f7f0-47b3-b83d-b121eb2b53c4",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-03-17"
  },
  {
    "uuid": "daaf668e-d5ba-49ce-8a3e-660a2bf006c8",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-02-12"
  },
  {
    "uuid": "8370eb6d-b3ff-4da0-953c-df1112b0d14a",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-02-22"
  },
  {
    "uuid": "3b0e3cf5-1940-4569-b11e-4fa3f402a583",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-12-17"
  },
  {
    "uuid": "8eb0bb69-d5f8-4700-93f8-6591da450aa6",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-04-21"
  },
  {
    "uuid": "7e30b296-b208-4375-9164-0377141ba910",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-08-02"
  },
  {
    "uuid": "cd5caffa-8945-423e-8a00-8ec58f94050f",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-02-13"
  },
  {
    "uuid": "620f6e15-7de9-448a-8a37-69368b6fbe1f",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-03-22"
  },
  {
    "uuid": "0f61fe00-251d-455b-b727-66465ca5c2f4",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2019-01-23"
  },
  {
    "uuid": "fa76fc08-d6e5-4a85-b62d-bbcb2c1b39cc",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-01-30"
  },
  {
    "uuid": "00153559-c0e4-477f-80e1-28c8830d33be",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-06-10"
  },
  {
    "uuid": "299d02d0-fcc4-4047-9b31-fa5c18993be2",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2018-06-05"
  },
  {
    "uuid": "e4566ab3-1dc7-42f3-85c7-9a80b03f52e7",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-07-05"
  },
  {
    "uuid": "f2137480-f2b5-4f06-be2c-3947f82dab6d",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-04-06"
  },
  {
    "uuid": "131d7353-2e60-408f-b6e2-6379887d357a",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-01-23"
  },
  {
    "uuid": "69f87c52-a792-4154-9b28-63523be692d1",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2019-04-10"
  },
  {
    "uuid": "30a9f6d0-60be-4bf6-95b7-1e4ab08079da",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-04"
  },
  {
    "uuid": "29002faf-bb97-4ad1-abd6-cd9b23ef7352",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-03-21"
  },
  {
    "uuid": "00342469-3431-4fb8-a8e8-0cfc926744fc",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-29"
  },
  {
    "uuid": "256a28fc-4b12-40d5-9a99-0097824e57e8",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": false,
    "visited": "2018-03-14"
  },
  {
    "uuid": "2da74096-c54e-4c7d-b8e8-0c9b558068ab",
    "bar_name": "Fat Cactus",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-07-13"
  },
  {
    "uuid": "446a2d66-aa04-49ef-9fd7-9d95101482af",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-11-09"
  },
  {
    "uuid": "a0ef8b36-feb5-45ad-a3a0-35fbe7122cb5",
    "bar_name": "Fat Cactus",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-03-08"
  },
  {
    "uuid": "4427be15-f122-42cb-9ec8-b86635eb572d",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-06-21"
  },
  {
    "uuid": "b3e99178-90b4-488f-a21d-f0f79e49f3d5",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-02-12"
  },
  {
    "uuid": "8e0f4145-d8e3-450b-8d37-9d1664d48197",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-01-10"
  },
  {
    "uuid": "63dfe975-dbcb-4dfe-a6df-29f558d53ab2",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-04-02"
  },
  {
    "uuid": "be3b6d47-4f54-432f-ace7-b203537d8688",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-07-30"
  },
  {
    "uuid": "65147bb1-b145-42ce-95d4-db230a30b597",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2018-12-21"
  },
  {
    "uuid": "9c1d0963-2a2c-4da2-b687-f1db6683c312",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-06-06"
  },
  {
    "uuid": "894b5f19-71db-4f59-9787-867d80832325",
    "bar_name": "Fat Cactus",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-07-01"
  },
  {
    "uuid": "af2090e1-fcf8-4aed-a1db-1932484705cd",
    "bar_name": "Tiger''s Milk",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-04-21"
  },
  {
    "uuid": "5780b7ba-5d36-484d-bbb7-33e8b2033fb6",
    "bar_name": "Fat Cactus",
    "drinks": 5,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-07-02"
  },
  {
    "uuid": "cdcf0495-ce70-4ed2-9a6b-d8907d0fefb5",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2019-02-25"
  },
  {
    "uuid": "ef6b64a5-4636-4fc1-a4eb-976b897a1585",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-12-22"
  },
  {
    "uuid": "7496a5fb-b80b-4570-8ae9-eb3c5ede1ed9",
    "bar_name": "Tiger''s Milk",
    "drinks": 1,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-01-19"
  },
  {
    "uuid": "a2966d5d-d160-4f84-8e06-522bfb86ac6d",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2019-05-08"
  },
  {
    "uuid": "f4e03ad9-e163-426a-a8d3-0108e617b2cd",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2019-09-01"
  },
  {
    "uuid": "a896cb40-6902-4518-aa73-7ce4b5e044d7",
    "bar_name": "Jerry''s",
    "drinks": 4,
    "beverage": "Corona",
    "happy_hour": true,
    "visited": "2018-06-15"
  },
  {
    "uuid": "0c77b64c-d95e-4de2-a82c-051aa14eecf3",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2019-03-06"
  },
  {
    "uuid": "14242f28-6124-4429-9f23-88c62bdf11ac",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Black Label",
    "happy_hour": true,
    "visited": "2019-05-25"
  },
  {
    "uuid": "8aea388f-d971-4cf2-8bf1-1168e7ae3e18",
    "bar_name": "Jerry''s",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-06-02"
  },
  {
    "uuid": "1ebaa621-63f3-4f40-8ca5-7481783d4daf",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-06-13"
  },
  {
    "uuid": "eeedc8f3-457e-4edc-b67c-8b688eed878b",
    "bar_name": "Yours Truly",
    "drinks": 3,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-01-14"
  },
  {
    "uuid": "60e0a875-78a6-4577-bbd3-8cf7c4d8d044",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": false,
    "visited": "2018-02-24"
  },
  {
    "uuid": "11555004-6815-4c44-8523-3cfcb7c529d1",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2019-08-16"
  },
  {
    "uuid": "2176294c-c697-4512-a613-65948db14a35",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-10-25"
  },
  {
    "uuid": "2ff8331f-5ac5-40cc-a2c0-47be26b3d594",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-01-26"
  },
  {
    "uuid": "ed7781f4-3142-4eba-a586-05e261fb9f15",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-08-27"
  },
  {
    "uuid": "3ea24462-7351-4545-bf2c-c1939e3dbb72",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2019-07-24"
  },
  {
    "uuid": "d2d9e4b2-67e0-4d59-8e0c-917d03995e65",
    "bar_name": "Jerry''s",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-07-12"
  },
  {
    "uuid": "c4b94523-1860-4685-a727-7d189f3fa9e6",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Black Label",
    "happy_hour": false,
    "visited": "2018-12-23"
  },
  {
    "uuid": "9df44d9b-a8bc-4d5a-ab73-1cb25c15b07f",
    "bar_name": "Yours Truly",
    "drinks": 2,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2019-02-28"
  },
  {
    "uuid": "0c211d2e-8896-4cf5-8fc1-a0b087c4a1ea",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": false,
    "visited": "2019-07-27"
  },
  {
    "uuid": "b4d99ad8-d94e-4fed-81c8-d21b809328e0",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Stella Artois",
    "happy_hour": true,
    "visited": "2018-05-28"
  },
  {
    "uuid": "d497a54b-db68-4dcb-b960-4f02429c410b",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-07-14"
  },
  {
    "uuid": "635cb66c-aa79-4b92-8474-f6190467cbdc",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-10-10"
  },
  {
    "uuid": "4e6ce270-445d-4945-916b-1e7e796591d9",
    "bar_name": "Fat Cactus",
    "drinks": 2,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-02"
  },
  {
    "uuid": "3c375928-92e3-4df9-8171-cdc60436a866",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-05-09"
  },
  {
    "uuid": "4b65e533-1447-4377-a028-defbac1616e8",
    "bar_name": "Cubana",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2019-09-03"
  },
  {
    "uuid": "9fb4fe51-2078-4908-a056-6242de81fb00",
    "bar_name": "Jerry''s",
    "drinks": 5,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-09-13"
  },
  {
    "uuid": "1af35f8f-c3af-4cac-a291-c92b88f09186",
    "bar_name": "Yours Truly",
    "drinks": 1,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-11-29"
  },
  {
    "uuid": "6ca0e082-6cc9-4f7b-a7c7-6d1b5e905764",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-08-06"
  },
  {
    "uuid": "11e2a295-ea0f-452b-b2e0-12510351ed13",
    "bar_name": "Tiger''s Milk",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2018-01-30"
  },
  {
    "uuid": "27698cc6-410d-4d4d-b368-e19f126f527d",
    "bar_name": "Yours Truly",
    "drinks": null,
    "beverage": null,
    "happy_hour": null,
    "visited": "2018-10-27"
  },
  {
    "uuid": "197ca43d-1382-4e50-bb44-7bff83954ea7",
    "bar_name": "Cubana",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-08-02"
  },
  {
    "uuid": "948d3dc7-34fa-436a-9688-f0b7e860d41f",
    "bar_name": "Tiger''s Milk",
    "drinks": 2,
    "beverage": "Red Label",
    "happy_hour": true,
    "visited": "2018-02-26"
  },
  {
    "uuid": "1914108e-4384-4aa3-a7da-cf28625ffb34",
    "bar_name": "Jerry''s",
    "drinks": 1,
    "beverage": "Corona",
    "happy_hour": false,
    "visited": "2018-05-10"
  },
  {
    "uuid": "a648221b-3995-413e-8039-613798459307",
    "bar_name": "Cubana",
    "drinks": 4,
    "beverage": "Castle Lite",
    "happy_hour": true,
    "visited": "2019-05-08"
  },
  {
    "uuid": "f3220eb2-832c-4885-a9df-0d48637a69dd",
    "bar_name": "Cubana",
    "drinks": 3,
    "beverage": "Don Julio",
    "happy_hour": false,
    "visited": "2018-08-01"
  },
  {
    "uuid": "eaae5260-db09-4a8d-9d87-6f9c45a472f1",
    "bar_name": "Tiger''s Milk",
    "drinks": 5,
    "beverage": "Tiger''s Milk Lager",
    "happy_hour": true,
    "visited": "2018-05-11"
  },
  {
    "uuid": "e2c7249a-8bab-43fd-b48b-0cd771b6b0c2",
    "bar_name": "Fat Cactus",
    "drinks": 3,
    "beverage": "Jose Cuervo",
    "happy_hour": true,
    "visited": "2019-07-26"
  },
  {
    "uuid": "89a5e808-3a88-4cde-88f3-17ba1a0336bc",
    "bar_name": "Cubana",
    "drinks": 1,
    "beverage": "Don Julio",
    "happy_hour": true,
    "visited": "2018-02-19"
  },
  {
    "uuid": "2d034ca0-d552-44ab-bd2b-013817105f57",
    "bar_name": "Jerry''s",
    "drinks": 3,
    "beverage": "Castle Lite",
    "happy_hour": false,
    "visited": "2018-02-02"
  }
]
');