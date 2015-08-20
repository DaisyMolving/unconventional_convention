class AddAssetToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :asset, :string
  end
end
