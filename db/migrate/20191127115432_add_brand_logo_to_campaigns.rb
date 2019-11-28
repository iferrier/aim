class AddBrandLogoToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :brand_logo, :string
  end
end
