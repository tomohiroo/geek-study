class BaseImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick # mini_magick使えない場合はコメントアウトしてください

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
