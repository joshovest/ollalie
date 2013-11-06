class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :creator_id
      t.integer :assignee_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status
      t.text :content

      t.timestamps
    end
  end
end
