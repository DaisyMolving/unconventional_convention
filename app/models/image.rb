class Image < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  attr_accessible :asset, :asset_cache, :remove_asset

end
