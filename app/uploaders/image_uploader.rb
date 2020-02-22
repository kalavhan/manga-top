class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  CarrierWave.configure do |config|
    config.cache_storage = :file
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end
end
