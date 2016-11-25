class CertificationsController < ApplicationController
    def create
		@student=Student.find(current_student.id)
		if @student.certifications.create(certification_params)
			redirect_to(:controller => "welcomes", :action => "profile")
		end
	end

	private
	def certification_params
		params.permit(:certificate_name, :certificate_authority, :license_no, :certification_url, :certification_date)
	end
end
