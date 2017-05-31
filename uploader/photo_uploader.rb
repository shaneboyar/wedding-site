class PhotoUploader < CarrierWave::Uploader::Base
  def filename
    "animated_#{Time.now.to_i}.gif" if original_filename.present?
  end
  storage :fog
end
