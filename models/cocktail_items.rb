require_relative("../db/sql_runner.rb")

class CocktailItem

  attr_accessor :product_name, :description, :quantity, :buy_cost, :sell_price, :producer_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @product_name = options['product_name']
    @description = options['description']
    @quantity = options['quantity'].to_i()
    @buy_cost = options['buy_cost'].to_i()
    @sell_price = options['sell_price'].to_i()
    @producer_id = options['producer_id'].to_i()
  end

  def save()
    sql = "INSERT INTO cocktail_items (
    product_name,
    description,
    quantity,
    buy_cost,
    sell_price,
    producer_id
    )
    VALUES
    (
    $1, $2, $3, $4, $5, $6
      ) RETURNING id"
    values = [@product_name, @description, @quantity, @buy_cost, @sell_price,
    @producer_id]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i()
  end

  def delete()
    sql = "DELETE FROM cocktail_items WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "UPDATE cocktail_items SET
    (
      product_name,
      description,
      quantity,
      buy_cost,
      sell_price,
      producer_id
    ) =
    (
      $1, $2, $3, $4, $5, $6
    )
    WHERE id = $7"
    values = [@product_name, @description, @quantity, @buy_cost, @sell_price,
    @producer_id, @id]
    SqlRunner.run(sql, values)
  end

  def producer()
    sql = "SELECT * FROM producers WHERE id = $1"
    values = [@producer_id]
    producer_data = SqlRunner.run(sql, values)
    producers = Producer.map_items(producer_data)
    return producers
  end

  def low_stock()
    return @quantity <= 2
  end

  # def split_description
  #   return @description.each_line(".\n")
  # end

  def mark_up()
    @sell_price - @buy_cost
  end

  def convert_price_buy()
    @buy_cost/100.0
  end

  def convert_price_sell()
    @sell_price/100.0
  end

  def self.all()
    sql = "SELECT * FROM cocktail_items"
    cocktail_item_data = SqlRunner.run(sql)
    cocktail_items = map_items(cocktail_item_data)
    return cocktail_items
  end

  def self.find(id)
    sql = "SELECT * FROM cocktail_items WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    cocktail_item = CocktailItem.new(result)
    return cocktail_item
  end

  def self.delete_all()
    sql = "DELETE FROM cocktail_items"
    SqlRunner.run(sql)
  end

  def self.map_items(cocktail_items_data)
    return cocktail_items_data.map { |cocktail_item| CocktailItem.new(cocktail_item)}
  end

end
