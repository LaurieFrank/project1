require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/producer.rb')
also_reload('../models/*')

get '/producers' do
  @producers = Producer.all()
  erb(:"producers/index")
end

get '/producers/new' do
  @producers = Producer.all
  erb(:"producers/new")
end

post '/producers' do
  Producer.new(params).save
  redirect to '/cocktail-items/new'
end
