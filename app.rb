require 'sinatra'
require 'sinatra/activerecord'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'fog'
require 'json'
require 'sass'
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

get '/photobooth' do
  @photos = Photo.all.order(created_at: :desc)
  erb :photos
end

get '/photobooth.json' do
  content_type :json
  Photo.all.order(created_at: :desc).to_json
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
