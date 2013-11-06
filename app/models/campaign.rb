class Campaign < ActiveRecord::Base
  attr_accessible :end_date, :experiences, :learnings, :location, :name, :revenue, :segments, :start_date, :success_events, :type
  
  has_one :campaign_type
end
