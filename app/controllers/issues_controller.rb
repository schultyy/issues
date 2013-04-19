class IssuesController < ApplicationController
	def new
		@issue = Issue.new
		@projects = Project.all
	end
	def create
		@issue = Issue.new(params[:issue])
		if @issue.save
			redirect_to :controller => "main", :action => "index"
		else
			render :action => new
		end
	end
	def edit
		@issue = Issue.find(params[:id])
	end
end
