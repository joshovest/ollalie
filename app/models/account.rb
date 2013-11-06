class Account < ActiveRecord::Base
  attr_accessible :name, :owner_id
  
  validates :name, presence:true, length: { maximum:50 }
  
  has_many :users
  belongs_to :owner, :class_name => "User"
end
