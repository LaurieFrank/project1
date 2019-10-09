require_relative("../models/cocktail_items.rb")
require_relative("../models/producer.rb")
require("pry")

Producer.delete_all()
CocktailItem.delete_all()

producer1 = Producer.new({
  "producer_name" => "Kraken"
  })

producer2 = Producer.new({
  "producer_name" => "Wrecking Coast"
  })

producer3 = Producer.new({
  "producer_name" => "Best Cocktail Kit"
  })

producer1.save()
producer2.save()
producer3.save()

cocktail_item1 = CocktailItem.new({
  "product_name" => "Boston Cocktail Shaker",
  "description" => "Professional quality cocktail shaker. Simple to use - no
  need to worry about unfastening various lids and strainers.",
  "quantity" => 3,
  "buy_cost" => 580,
  "sell_price" => 750,
  "producer_id" => producer3.id
  })

cocktail_item2 = CocktailItem.new({
  "product_name" => "Jigger",
  "description" => "Doubled-ended alcohol measure: One side measures single shots
   (25 ml), the other doubles (50 ml). The cocktail jigger is made of durable,
   rust-resistant, food-safe stainless steel.",
  "quantity" => 3,
  "buy_cost" => 390,
  "sell_price" => 520,
  "producer_id" => producer3.id
  })

cocktail_item3 = CocktailItem.new({
  "product_name" => "Cocktail Strainer",
  "description" => "Hawthorn Stainless Steel Strainer. 4 Prong. Use with a Boston
  Cocktail Shaker.",
  "quantity" => 3,
  "buy_cost" => 385,
  "sell_price" => 490,
  "producer_id" => producer3.id
  })

cocktail_item4 = CocktailItem.new({
  "product_name" => "Wrecking Coast Gin",
  "description" => "Clotted cream gin. 70cl.",
  "quantity" => 9,
  "buy_cost" => 3500,
  "sell_price" => 4000,
  "producer_id" => producer2.id
  })

cocktail_item5 = CocktailItem.new({
  "product_name" => "Kraken Rum",
  "description" => "Black Spiced Rum. 70cl.",
  "quantity" => 9,
  "buy_cost" => 1800,
  "sell_price" => 2200,
  "producer_id" => producer1.id
  })

cocktail_item1.save()
cocktail_item2.save()
cocktail_item3.save()
cocktail_item4.save()
cocktail_item5.save()

binding.pry
nil
