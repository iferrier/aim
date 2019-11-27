class AddingCampaignPictureToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :campaign_picture, :string
  end
end
