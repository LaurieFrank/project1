DROP TABLE producer;
DROP TABLE cocktail_shop;

CREATE TABLE cocktail_shop (
  id SERIAL8 PRIMARY KEY,
  product_name VARCHAR(255),
  description TEXT,
  quantity INT8,
  buy_cost INT8,
  sell_price INT8
);

CREATE TABLE producer (
  id SERIAL8 PRIMARY KEY,
  producer_name VARCHAR(255),
  coctail_shop_id INT8 REFERENCES cocktail_shop(id)
);
