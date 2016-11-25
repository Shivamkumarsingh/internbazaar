class CategoriesController <ApplicationController
	def infosys
    	@infosyss=Job.infosys
    end
    def wipro
    	@wipros=Job.wipro
    end
    def cognizant
    	@cognizants=Job.cognizant
    end
    def accenture
    	@accentures=Job.accenture
    end
    def amazon
    	@amazons=Job.amazon
    end
private
	
	def brand_param
		params.require(:brand).permit(:name,:location)
	end
end