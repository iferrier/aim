class AddCoordinatesToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :latitude, :float
    add_column :campaigns, :longitude, :float
  end
end
