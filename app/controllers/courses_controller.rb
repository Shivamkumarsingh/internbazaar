class CoursesController < ApplicationController
	
	def create
		@student=Student.find(current_student.id)
		if @student.courses.create(course_params)
			redirect_to(:controller => "welcomes", :action => "profile")
		end
	end

	private
	def course_params
		params.permit(:course_name, :course_code, :associated_with)
	end
end
