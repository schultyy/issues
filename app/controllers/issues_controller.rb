class IssuesController < ApplicationController
	def new
		@issue = Issue.new
	end
	def create
		@issue = Issue.new(params[:issue])
		if @issue.save
			redirect_to :controller => "main", :action => "index"
		else
			render :action => new
		end
	end
end
