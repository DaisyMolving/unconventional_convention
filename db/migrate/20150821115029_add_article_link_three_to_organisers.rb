class AddArticleLinkThreeToOrganisers < ActiveRecord::Migration
  def change
    add_column :organisers, :article_link_three, :string
  end
end
