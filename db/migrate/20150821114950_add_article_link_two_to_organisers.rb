class AddArticleLinkTwoToOrganisers < ActiveRecord::Migration
  def change
    add_column :organisers, :article_link_two, :string
  end
end
