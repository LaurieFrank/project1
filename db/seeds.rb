require_relative("..models/cocktail_items.rb")
require_relative("..models/producer.rb")

producer1 = Producer.new({
  "name" = "Kraken"
  })

producer2 = Producer.new({
  "name" = "Wrecking Coast"
  })

producer3 = Producer.new({
  "name" = "Best Cocktail Kit"
  })


cocktail_items1 = CocktailItems.new({
  "product_name" = "Boston Cocktail Shaker",
  "description" = "Professional quality cocktail shaker. Simple to use - no
  need to worry about unfastening various lids and strainers.",
  "quantity" = 3,
  "buy_cost" = 750,
  "sell_price" = 580,
  "producer_id" = producer3.id
  )}

cocktail_items2 = CocktailItems.new({
  "product_name" = "Jigger",
  "description" = "Doubled-ended alcohol measure: One side measures single shots
   (25 ml), the other doubles (50 ml). The cocktail jigger is made of durable,
   rust-resistant, food-safe stainless steel.",
  "quantity" = 3,
  "buy_cost" = 520,
  "sell_price" = 390,
  "producer_id" = producer3.id
  )}

cocktail_items3 = CocktailItems.new({
  "product_name" = "Cocktail Strainer",
  "description" = "Hawthorn Stainless Steel Strainer. 4 Prong. Use with a Boston
  Cocktail Shaker.",
  "quantity" = 3,
  "buy_cost" = 490,
  "sell_price" = 385,
  "producer_id" = producer3.id
  )}

cocktail_items4 = CocktailItems.new({
  "product_name" = "Wrecking Coast Gin",
  "description" = "Clotted cream gin. 70cl.",
  "quantity" = 9,
  "buy_cost" = 3500,
  "sell_price" = 4000,
  "producer_id" = producer2.id
  )}

cocktail_items5 = CocktailItems.new({
  "product_name" = "Kraken Rum",
  "description" = "Black Spiced Rum. 70cl.",
  "quantity" = 9,
  "buy_cost" = 1800,
  "sell_price" = 2200,
  "producer_id" = producer1.id
  )}
