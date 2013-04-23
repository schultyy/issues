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
		@projects = Project.all
		@issue = Issue.find(params[:id])
	end
	def update
		@issue = Issue.find(params[:id])
		if @issue.update_attributes(params[:issue])
			redirect_to @issue.project
		else
			render :action => :edit
		end
	end
end
