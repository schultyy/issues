class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title, :project_id
  has_many :issues
end
