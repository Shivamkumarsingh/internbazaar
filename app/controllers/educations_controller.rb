class EducationsController < ApplicationController
	def create
		@student=Student.find(current_student.id)
		if @student.educations.create(education_params)
			redirect_to(:controller => "welcomes", :action => "profile")
		end
	end

	private
	def education_params
		params.permit(:school, :from, :to, :degree, :field_of_study, :grade, :description)
	end
end
