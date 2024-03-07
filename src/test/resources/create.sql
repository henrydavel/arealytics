CREATE TABLE "stock" (
                         "id" serial PRIMARY KEY,
                         "FK_bar_stock_item_id" integer
);

CREATE TABLE "stock_item" (
                              "id" serial PRIMARY KEY,
                              "FK_item_type" integer,
                              "price" float,
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

ALTER TABLE "stock_item" ADD FOREIGN KEY ("id") REFERENCES "stock" ("FK_bar_stock_item_id");

ALTER TABLE "item_type" ADD FOREIGN KEY ("id") REFERENCES "stock_item" ("FK_item_type");

ALTER TABLE "item_type" ADD FOREIGN KEY ("FK_type_id") REFERENCES "type" ("id");
