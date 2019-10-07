require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/cocktail_items.rb')
also_reload('../models/*')

get '/cocktail-items' do
  @cocktail_items = CocktailItem.all()
  erb(:"cocktail_items/index")
end
