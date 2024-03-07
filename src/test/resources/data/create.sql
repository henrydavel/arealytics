DROP TABLE public.item_type CASCADE;
DROP TABLE public.stock CASCADE;
DROP TABLE public.stock_item CASCADE;
DROP TABLE public."bar" CASCADE;
DROP TABLE public."type" CASCADE;
DROP TABLE public."visit_event" CASCADE;


CREATE TABLE "drinker" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "surname" varchar
);
 
CREATE TABLE "visit_event" (
  "id" SERIAL PRIMARY KEY,
  "uuid" varchar,
  "bar_name" varchar,
  "drinks" int,
  "beverage" varchar,
  "happy_hour" bool,
  "visited" varchar,
  "FK_drinker_id" int
);

CREATE TABLE "bar" (
  "id" serial PRIMARY KEY,
  "barname" varchar,
  "address" varchar
);

CREATE TABLE "stock" (
  "id" serial PRIMARY KEY,
  "price" float,
  "FK_bar_stock_item_id" integer,
  "FK_bar_id" integer
);

CREATE TABLE "stock_item" (
  "id" serial PRIMARY KEY,
  "FK_item_type" integer,
  "codebar" integer
);

CREATE TABLE "item_type" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "FK_type_id" integer,
  "alcoholUnits" float
);

CREATE TABLE "type" (
  "id" serial PRIMARY KEY,
  "type" varchar
);

ALTER TABLE "visit_event" ADD FOREIGN KEY ("FK_drinker_id") REFERENCES "drinker" ("id");
ALTER TABLE "stock" ADD FOREIGN KEY ("FK_bar_id") REFERENCES "bar" ("id");
ALTER TABLE "stock" ADD FOREIGN KEY ("FK_bar_stock_item_id") REFERENCES "stock_item" ("id");
ALTER TABLE "stock_item" ADD FOREIGN KEY ("FK_item_type") REFERENCES "item_type" ("id");
ALTER TABLE "item_type" ADD FOREIGN KEY ("FK_type_id") REFERENCES "type" ("id");

