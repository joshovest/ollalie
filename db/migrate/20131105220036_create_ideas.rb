class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.integer :submitter_id
      t.text :location
      t.text :potential_learnings
      t.integer :priority
      t.integer :impact
      t.integer :revenue_impact
      t.integer :technical_impact
      t.belongs_to :users, :through => :submitter_id

      t.timestamps
    end
    
    create_table :ideas_users, :id => false do |t|
      t.references :idea
      t.references :user
    end
    
    add_index :ideas_users, [:idea_id, :user_id], unique:true
  end
end