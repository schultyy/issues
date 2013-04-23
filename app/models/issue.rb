class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title, :project_id
  belongs_to :project
  validates :title, :presence => true
  validates_presence_of :project
end
