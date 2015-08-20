class RemoveImagePathFromGalleryImages < ActiveRecord::Migration
  def change
    remove_column :gallery_images, :image_path, :string
  end
end
