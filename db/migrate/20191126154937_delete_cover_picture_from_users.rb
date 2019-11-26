class DeleteCoverPictureFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :cover_picture
  end
end
