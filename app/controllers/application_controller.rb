class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	# helper_method :logged_in?, :check_login
    before_action :authenticate

    # Routing errors
	# def not_found
 #  		raise ActionController::RoutingError.new('Not Found')
	# end

	private 
	def authenticate
		@current_user = User.find_by(:id => session[:user_id])
		session[:user_id] = nil unless @current_user.present?
	end

	def logged_in?
		authenticate != nil
	end

	def check_login
		redirect_to root_path unless logged_in?
	end 

	# def is_admin?
	# 	authenticate.admin if logged_in?
	# end
	
end
