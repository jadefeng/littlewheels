class SessionController < ApplicationController
	def new
	end

	# Where the login form POSTs data
	def create
		user = User.where(:username => params[:username]).first
		if user.present? && (user.authenticate params[:password]) 
			session[:user_id] = user.id
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	# Logout
	def destroy
		session[:user_id] = nil 		# Ending the session!
		redirect_to root_path
	end

end