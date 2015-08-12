class CreateOrganisers < ActiveRecord::Migration
  def change
    create_table :organisers do |t|
      t.string :headshot
      t.string :title
      t.string :email
      t.string :twitter_handle
      t.string :personal_site
      t.string :description
      t.string :article_links

      t.timestamps null: false
    end
  end
end
