class GalleryImage < ActiveRecord::Base
  mount_uploader :asset, GalleryImageUploader
 
end
