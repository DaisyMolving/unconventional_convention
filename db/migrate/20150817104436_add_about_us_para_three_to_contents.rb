class AddAboutUsParaThreeToContents < ActiveRecord::Migration
  def change
    add_column :contents, :about_us_para_three, :string
  end
end
