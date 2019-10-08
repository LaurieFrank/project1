require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/cocktail_items.rb')
also_reload('../models/*')

get '/cocktail-items' do
  @cocktail_items = CocktailItem.all()
  erb(:"cocktail_items/index")
end

get '/cocktail-items/new' do
  @cocktail_items = CocktailItem.all
  @producers = Producer.all
  erb(:"cocktail_items/new")
end

post '/cocktail-items' do
  CocktailItem.new(params).save
  redirect to '/cocktail-items'
end

get '/cocktail-items/:id'  do
  @cocktail_item = CocktailItem.find(params['id'])
  erb(:"cocktail_items/show")
end

get '/cocktail-items/:id/edit' do
  @cocktail_items = CocktailItem.find(params['id'])
  @producers = Producer.all()
  erb(:"cocktail_items/edit")
end

post '/cocktail-items/:id' do
  cocktail_item = CocktailItem.new(params)
  cocktail_item.update
  redirect to "/cocktail-items/#{params['id']}"
end

post '/cocktail_items/:id/delete' do
  cocktail_item = CocktailItem.find(params['id'])
  cocktail_item.delete
  redirect to '/cocktail-items'
end
