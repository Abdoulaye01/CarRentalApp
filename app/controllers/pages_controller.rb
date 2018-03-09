class PagesController < ApplicationController
	
def index
  @vehicles = Vehicle.order("BrandName").all
end


def search
    @vehicles = Vehicle.search params[:query]
    unless @vehicles.empty?
	    	render '/vehicles/index'
	else
		flash[:notice] = 'No record matches that search'
		redirect_to vehicles_path
	end
  
end

end
