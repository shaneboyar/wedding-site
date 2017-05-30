require 'sinatra'
require 'sinatra/activerecord'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'fog'
require 'sass'
require 'dotenv/load'
require './config/environments'
require './models/photo'

CarrierWave.configure do |config|
  config.root = File.dirname(__FILE__) + '/public/images/photobooth'
end

get '/' do
  erb :index
end

get '/accomodations' do
  erb :accomodations
end

get '/photo' do
  @photos = Photo.all
  erb :photos
end

post '/photobooth' do
  # Create new Image Model
  photo = Photo.new
  # Save the data from the request
  photo.file = params[:file] # carrierwave will upload the file automatically
  # Save
  photo.save!
  # Send Success
  'OK'
end
