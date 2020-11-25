class AddFieldToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :town, :string
    add_column :users, :county, :string
    add_column :users, :info, :text
  end
end
