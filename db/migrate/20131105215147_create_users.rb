class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :access_level
      t.integer :account_id
      t.belongs_to :account

      t.timestamps
    end
  end
end
