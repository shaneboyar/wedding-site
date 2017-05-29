require './uploader/photo_uploader'

class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end