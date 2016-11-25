class DashboardsController < ApplicationController

	def index
		@dashboards=Dashboard.where(:student_id => current_student.id)
	end

	def create
		@student=Student.find(current_student)
		@job=Job.find(params[:job_id])
		@dashboard=@student.dashboards.create(:date => Date.today, :profile => @job.profile, :student_id => params[:student_id], :job_id => params[:job_id], :application_status => "Applied")
		redirect_to(:controller => 'dashboards', :action => "index")
	end

end
