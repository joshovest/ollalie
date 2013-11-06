class User < ActiveRecord::Base
  attr_accessible :access_level, :email, :name, :account_id
  
  before_save :validate_access
  
  validates :name, presence:true, length: { maximum:50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, format:{ with: VALID_EMAIL_REGEX }, uniqueness:{ case_sensitive:false }
  validates :access_level, :inclusion => { :in => 0..3, :message => "Please choose a valid access level." }
  
  belongs_to :account
  has_and_belongs_to_many :ideas
  
  def access_level_string
    Ollalie::Application.config.access_levels[self.access_level]
  end

  private
  
    def validate_access
      self.access_level = 1 if self.access_level == 0 && !self.account_id.nil?
    end
end
