class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :owner_id
      t.belongs_to :user, :through => :owner_id

      t.timestamps
    end
  end
end
