class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title
  has_many :issues
end
