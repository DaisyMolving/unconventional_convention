class AddAboutUsParaFourToContents < ActiveRecord::Migration
  def change
    add_column :contents, :about_us_para_four, :string
  end
end
