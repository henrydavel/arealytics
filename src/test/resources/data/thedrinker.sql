DROP TABLE public.drinker CASCADE;
DROP TABLE public.visit CASCADE;
DROP TABLE public.bar CASCADE;
DROP TABLE public.stock CASCADE;
DROP TABLE public.stock_item CASCADE;
DROP TABLE public.item CASCADE;
DROP TABLE public.item_type CASCADE;
DROP TABLE public."type" CASCADE;

CREATE TABLE "item" (
  "id" serial PRIMARY KEY,
  "FK_item_Type_id" integer,
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

ALTER TABLE "item" ADD FOREIGN KEY ("FK_item_Type_id") REFERENCES "item" ("id");
ALTER TABLE "item_type" ADD FOREIGN KEY ("FK_type_id") REFERENCES "type" ("id");