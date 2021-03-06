class SessionsController < ApplicationController
  def new
  end

  def create
	  customer = Customer.find_by_email(params[:email])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
	  	redirect_to vehicles_path #session[:return_to] || root_path
	  	
	else
		flash.now[:error] = "Invalid email/password combination."
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
end