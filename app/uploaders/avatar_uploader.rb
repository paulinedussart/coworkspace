class AvatarUploader < CarrierWave::Uploader::Base
  storage :file
  include Cloudinary::CarrierWave

  # It's the default avatar for carrierWave but it doesn't work
  # def default_url
  #   ActionController::Base.helpers.asset_path("fallback/" + [version_name, "userWhitoutPicture.png"].compact.join('_'))
  # end
end

