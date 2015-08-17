class RemoveAboutUsFromContent < ActiveRecord::Migration
  def change
    remove_column :contents, :about_us, :string
  end
end
