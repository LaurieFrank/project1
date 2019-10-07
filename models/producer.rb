require_relative("../db/sql_runner.rb")

class Producer

  attr_reader :id
  attr_accessor :producer_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @producer_name = options['producer_name']
  end

  def save()
    sql = "INSERT INTO producers (
    producer_name
    )
    VALUES
    (
    $1
      ) RETURNING id"
    values = [@producer_name]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i()
  end
  #
  # def delete()
  #   sql = "DELETE FROM producers WHERE id = $1"
  #   values = [@id]
  #   SqlRunner.run(sql, values)

  # def update()
  #   sql = "UPDATE producers SET (producer_name) = ($1)
  #     where id = $2"
  #     values = [@producer_id]
  #     SqlRunner.run(sql, values)
  # end

  def self.delete_all()
    sql = "DELETE FROM cocktail_items"
    SqlRunner.run(sql)
  end

  # def self.map_items(producer_data)
  #   return producer_data.map { |producer| Producer.new(producer)}
  # end

end
