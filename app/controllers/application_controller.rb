class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def status 
	
end

	def after_sign_in_path_for(resource)
		request.env['omniquth.origin'] || stored_location_for(@user) || root_path
	end

 
end
