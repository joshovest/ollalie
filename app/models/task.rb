class Task < ActiveRecord::Base
  attr_accessible :assignee_id, :content, :end_date, :name, :creator_id, :start_date, :status
end
