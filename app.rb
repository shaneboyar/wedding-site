require 'sinatra'
require 'sinatra/activerecord'
require "carrierwave"
require "carrierwave/orm/activerecord"
require 'sass'
require './config/environments'
require './models/photo'

get '/' do
  erb :index
end

get '/accomodations' do
  erb :accomodations
end

get '/photo' do
  @photo = Photo.first
  erb :photos
end

post "/photobooth" do
  #Create new Image Model
  photo = Photo.new
  #Save the data from the request
  photo.file = params[:file] #carrierwave will upload the file automatically
  #Save
  photo.save!
  #Send Success
  '200'
end
