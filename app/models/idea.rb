class Idea < ActiveRecord::Base
  attr_accessible :impact, :location, :name, :potential_learnings, :priority, :revenue_impact, :submitter_id, :technical_impact, :collaborators
  
  validates :name, presence:true
  validates :location, presence:true
  validates :potential_learnings, presence:true
  validates :submitter_id, presence:true
  validates :revenue_impact, presence:true
  validates :technical_impact, presence:true
  validates :impact, presence:true
  validates :priority, presence:true
  
  belongs_to :submitter, :class_name => "User"
  has_and_belongs_to_many :collaborators, :class_name => "User"
  
  def priority_string
    Ollalie::Application.config.priorities[self.priority]
  end
  
  def impact_string
    Ollalie::Application.config.priorities[self.impact]
  end
  
  def technical_impact_string
    Ollalie::Application.config.priorities[self.technical_impact]
  end
  
  def revenue_impact_string
    Ollalie::Application.config.priorities[self.revenue_impact]
  end
end
