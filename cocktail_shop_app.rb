require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/cocktail_items_controller')
require_relative('controllers/producers_controller')
also_reload("./models/*")

get '/' do
  erb(:index)
end
