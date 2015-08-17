class AddAboutUsParaFiveToContents < ActiveRecord::Migration
  def change
    add_column :contents, :about_us_para_five, :string
  end
end
