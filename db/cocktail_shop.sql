DROP TABLE cocktail_items;
DROP TABLE producers;

CREATE TABLE producers (
  id SERIAL8 PRIMARY KEY,
  producer_name VARCHAR(255)
);

CREATE TABLE cocktail_items (
  id SERIAL8 PRIMARY KEY,
  product_name VARCHAR(255),
  description TEXT,
  quantity INT8,
  buy_cost INT8,
  sell_price INT8,
  producer_id INT8 REFERENCES producers(id)
);
