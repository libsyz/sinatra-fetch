require 'sinatra'
require "sinatra/json"
require 'httparty'
require 'json'

get '/' do
   erb :home
end

get '/deezer_data' do
  res = HTTParty.get('https://api.deezer.com/playlist/908622995')
  data = JSON.parse(res.body)
  json(data, :content_type => :js)
end
