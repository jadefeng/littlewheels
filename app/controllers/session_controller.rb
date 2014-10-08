class SessionController < ApplicationController
	def new
	end

	# Where the login form POSTs data
	def create
		user = User.where(:username => params[:username].downcase).first
		if user.present? && (user.authenticate params[:password]) 
			session[:user_id] = user.id

			redirect_to user_path(user)
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