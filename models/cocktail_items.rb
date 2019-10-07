require_relative("../db/sql_runner.rb")

class CocktailItem

  attr_accessor :product_name, :description, :quantity, :buy_cost, :sell_price, :producer_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @product_name = options['product_name']
    @description = options['description']
    @quantity = options['quality'].to_i()
    @buy_cost = options['buy_cost'].to_i()
    @sell_price = options['sell_price'].to_i()
    @producer_id = options['producer_id'].to.i()
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

  # def delete()
  #   sql = "DELETE FROM cocktail_items WHERE id = $1"
  #   values = [@id]
  #   SqlRunner.run(sql, values)
  # end

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
    @producer_id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM cocktail_items"
    SqlRunner.run(sql)
  end

end
