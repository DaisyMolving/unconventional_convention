class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :about_us
      t.string :footnote

      t.timestamps null: false
    end
  end
end
