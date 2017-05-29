require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'sass'

get '/' do
  erb :index
end

get '/accomodations' do
  erb :accomodations
end
