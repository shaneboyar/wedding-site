require 'rubygems'
require 'sinatra'
require 'sass'

get '/' do
  erb :index
end

get '/accomodations' do
  erb :accomodations
end
