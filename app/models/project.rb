class Project < ActiveRecord::Base
  has_and_belongs_to_many :project_services
  has_and_belongs_to_many :users
  has_many :requirements
  
  def requirements_approved
    total = requirements.count
    return 0 if total < 1
    
    approved = requirements.where(approved: true).count
      (approved.to_f / total * 100).round
  end
  
end
