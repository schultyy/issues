class Issue < ActiveRecord::Base
  attr_accessible :assignee, :description, :title, :status, :project_id
  belongs_to :project
  #validates_with IssueStatusValidator
end

class IssueStatusValidator
	def validate(record)
		if record.status == "closed"
			records.errors[:base] << "Can not close an issue which is already closed"
		end
	end
end
