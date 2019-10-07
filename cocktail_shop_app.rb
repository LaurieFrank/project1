require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/cocktail_items_controller')
require_relative('controllers/producers_controller')

get '/' do
  erb(:index)
end
