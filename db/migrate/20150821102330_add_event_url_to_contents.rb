class AddEventUrlToContents < ActiveRecord::Migration
  def change
    add_column :contents, :event_url, :string
  end
end
