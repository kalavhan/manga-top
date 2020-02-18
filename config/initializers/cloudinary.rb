# frozen_string_literal: true

Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUD_NAME']
  config.api_key = ENV['CLOUD_KEY']
  config.api_secret = ENV['CLOUD_SECRET']
  config.enhance_image_tag= false
  config.static_file_support= false
end