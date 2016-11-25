class ExperiencesController < ApplicationController

	def create
		@student=Student.find(current_student.id)
		if @student.experiences.create(experience_params)
			redirect_to(:controller => "welcomes", :action => "profile")
		end
	end

	private
	def experience_params
		params.permit(:company_name, :title, :location, :from, :to, :currently_working_here, :description)
	end
end