require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/producer.rb')
also_reload('../models/*')

get '/producers' do
  @producers = Producer.all()
  erb(:"producers/index")
end
