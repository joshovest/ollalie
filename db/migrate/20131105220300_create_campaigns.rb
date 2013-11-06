class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.text :location
      t.integer :type
      t.integer :experiences
      t.decimal :revenue
      t.text :segments
      t.text :success_events
      t.text :learnings

      t.timestamps
    end
  end
end
