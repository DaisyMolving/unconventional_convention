class AddAboutUsParaTwoToContents < ActiveRecord::Migration
  def change
    add_column :contents, :about_us_para_two, :string
  end
end
