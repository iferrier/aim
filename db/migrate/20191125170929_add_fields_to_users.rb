class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :instagram, :string
    add_column :users, :location, :string
    add_column :users, :cover_picture, :string
    add_column :users, :bio, :text
  end
end
