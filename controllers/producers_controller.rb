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

get '/producers/:id/edit' do
  @producers = Producer.find(params['id'])
  erb(:"producers/edit")
end

post '/producers/:id' do
  producer = Producer.new(params)
  producer.update
  redirect to "/producers/#{params['id']}"
end

get '/producers/:id' do
  @producers = Producer.find(params['id'])
  erb(:"producers/show")
end
