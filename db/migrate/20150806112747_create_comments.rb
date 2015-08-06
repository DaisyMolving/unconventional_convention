class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :guestname
      t.string :guestemail
      t.string :content

      t.timestamps null: false
    end
  end
end
