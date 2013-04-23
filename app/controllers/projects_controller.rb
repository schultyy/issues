class ProjectsController < ApplicationController
	def index
	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.new(params[:project])
		if @project.save
			redirect_to :controller => "main", :action => "index"
		else
			render :action => new
		end
	end
	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		respond_to do |format|
			format.html { redirect_to '/' }
		end
	end
	def show
		@project = Project.find(params[:id])
	end
	def close_issue
		@issue = Issue.find(params[:id])
		@issue.status = "closed"
		@issue.save
		logger.info "Project Id " + @issue.project_id.to_s
		redirect_to :action => "show", :id => @issue.project_id
	end
end
