class EventImageUploader < CarrierWave::Uploader::Base
  process :resize_to_fit => [300, 300]
end
