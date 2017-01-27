require 'sinatra'
require 'httparty'
require 'pry'
require 'chartkick'


get '/' do
  response = HTTParty.get('http://catfacts-api.appspot.com/api/facts?number=20')
  data = JSON::parse(response)
  @facts = data["facts"]
  erb :index
end
