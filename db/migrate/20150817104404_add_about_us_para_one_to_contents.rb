class AddAboutUsParaOneToContents < ActiveRecord::Migration
  def change
    add_column :contents, :about_us_para_one, :string
  end
end
