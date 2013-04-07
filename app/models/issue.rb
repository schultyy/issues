class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title
end
