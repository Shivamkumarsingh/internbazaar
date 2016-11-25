class WelcomesController < ApplicationController
  
  def profile
  	@student=Student.find(current_student.id)
  	@experiences=@student.experiences.all
  	@certifications=@student.certifications.all
  	@educations=@student.educations.all
  	@projects=@student.projects.all
  	@courses=@student.courses.all
  end

  def index
    @job=Job.all
  end

 
  private
  def student_param
    params.require(:student).permit(:name,:address,:contact,:skills,:gender)
  end
end
