class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title, :project_id
  belongs_to :project
end
