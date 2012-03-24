class Requirement < ActiveRecord::Base
  belongs_to :project
  belongs_to :requirement_type
  belongs_to :requirement_priority
  
end
