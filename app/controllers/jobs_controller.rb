class JobsController < ApplicationController
  def new
    @brand=current_brand
    @job=Job.new
  end

  def create
    @brand=current_brand
    @job=@brand.jobs.create(job_param)
    if @job.save
      redirect_to fun_path(@brand)
   else
    render 'new'
  end
  end

  def index
    @jobs=Job.all
  end
  def fun
    
       @brand=Brand.find(params[:brand_id])
       @jobs=@brand.jobs.all
  end
 
  def show

       @brand=Brand.find(params[:brand_id])
       @job=@brand.jobs.find(params[:id])
  end

  def edit
  end

  def update
    @brand=Brand.find(params[:brand_id])
    @job=@brand.jobs.find(params[:id])
    @job.update(job_param)
  end

  def destroy
    @brand=Brand.find(params[:brand_id])
    @job=@brand.jobs.find(params[:id])
    @job.destroy
    redirect_to brand_path(@brand),:notice => "Deleted"
  end
  private
  def job_param
    params[:brand].require(:job).permit(:profile,:duration,:stipend)
  end
end
