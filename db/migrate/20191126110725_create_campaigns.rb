class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :campaign_description
      t.string :cause
      t.string :campaign_picture
      t.string :location
      t.string :organisation
      t.date :launch_date || nil
      t.boolean :live

      t.timestamps
    end
  end
end
