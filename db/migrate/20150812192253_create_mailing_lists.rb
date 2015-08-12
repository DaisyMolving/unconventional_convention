class CreateMailingLists < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address

      t.timestamps null: false
    end
  end
end
