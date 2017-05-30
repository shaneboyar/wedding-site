class PhotoUploader < CarrierWave::Uploader::Base
  def store_dir
    'public/images'
  end
  storage :file
end