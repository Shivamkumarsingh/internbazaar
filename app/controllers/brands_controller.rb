class BrandsController < ApplicationController
	def new
		@brand=Brand.new
	end
	def create
		@brand=Brand.create(Brand_param)
		if @brand.save
			flash[:success]="success"
			redirect_to @brand
		else
			flash[:error] = @brand.errors.full_messages
			render 'new'
	    end
    end
    def index
    	@brand=Brand.all
    end
    
    def show
    	@brand=Brand.find(params[:id])
    end
	def edit
	end
	def update
		@brand.update(brand_param)
		redirect_to '#',notice: "updated"
	end
    def destroy
    	@brand.destroy
    	redirect_to '#',notice: "deleted"
    end
	private
	def set_brand
		@brand=Brand.find(params[:id])
	end
	def brand_param
		params.require(:brand).permit(:name,:location)
	end
end
