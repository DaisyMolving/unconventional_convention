class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :image_path
      t.string :image_caption

      t.timestamps null: false
    end
  end
end
