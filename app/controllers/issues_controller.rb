class IssuesController < ApplicationController
	def new
		@issue = Issue.new
		@projects = Project.all
		respond_to do |format|
			format.html
		end
	end

	def create
		@issue = Issue.new(params[:issue])
		respond_to do |format|
			if @issue.save
				format.html{
					redirect_to :controller => "main", :action => "index", :notice => 'Issue was saved'
				}
			else
				@projects = Project.all
				format.html  { render :action => :new }
			end
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
