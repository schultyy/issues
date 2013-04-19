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
end
