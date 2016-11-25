class ProjectsController < ApplicationController
	
	def create
		@student=Student.find(current_student.id)
		if @student.projects.create(project_params)
			redirect_to(:controller => "welcomes", :action => "profile")
		end
	end

	private
	def project_params
		params.permit(:title, :occupation, :from, :to, :project_url, :description)
	end

end