module ApplicationHelper
	
	def signed_in?
		if session[:customer_id].nil?
			return
		else
			@current_customer = Customer.find_by_id(session[:customer_id])
		end
	end
	
	def authorise
	
		unless signed_in?
			
			session[:return_to] = request.fullpath
			redirect_to login_path, :notice => "Please sign in to access this page"
			
		else
			
		end
	
	end
	
	def euro(amount)
		number_to_currency(amount, :unit => '€')
	end
	
	def get_age(dob)
		return nil unless dob
		now = Time.now
		now.year - dob.year - (dob.to_time.change(:year => now.year) > now ? 1
		: 0)
	end
end
