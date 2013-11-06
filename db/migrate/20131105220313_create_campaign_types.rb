class CreateCampaignTypes < ActiveRecord::Migration
  def change
    create_table :campaign_types do |t|
      t.string :name
      t.belongs_to :campaign

      t.timestamps
    end
  end
end
