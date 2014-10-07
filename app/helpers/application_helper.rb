module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
			nav += "<li>" + link_to('My Profile', user_path(@current_user)) + "</li> "
			nav += "<li>" + link_to('All Profiles', users_path) + "</li> "
			nav += "<li>" + link_to('Edit Profile', edit_user_path) + "</li> "
			nav += "<li>" + link_to('All Children', kids_path) + "</li> "
			nav += "<li>" + link_to('Register A Student', new_kid_path) + "</li> "
			nav += "<li>" + link_to('All Rides', trips_path) + "</li> "
			nav += "<li>" + link_to('Register A Ride', new_trip_path) + "</li> "
			nav += "<li>" + link_to('All Schools', schools_path) + "</li> "
			nav += "<li>" + link_to('Register A School', new_school_path) + "</li> "
			nav += "<li>  #{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => "Are you sure?"})  }</li> "
		else 
			nav += "<li> #{ link_to('Sign Up', new_user_path) }</li> "
			nav += "<li> #{ link_to('Login', login_path) } </li> "
		end 
		nav
	end

	def intellinav_short
		nav = ''
		if @current_user.present?
			nav += "<li><h4> Welcome " + @current_user.first_name + "</h4></li> "  			
			nav += "<li>" + link_to('My Profile', user_path(@current_user)) + "</li> "
			nav += "<li>" + link_to('All Profiles', users_path) + "</li> "
			nav += "<li>" + link_to('All Children', kids_path) + "</li> "
			nav += "<li>" + link_to('All Rides', trips_path) + "</li> "
			nav += "<li>" + link_to('About', about_path) + "</li> "
			nav += "<li>" + link_to('Contact', contact_path) + "</li> "

		else 
			nav += "<li> #{ link_to('Sign Up', new_user_path) }</li> "
			nav += "<li> #{ link_to('Login', login_path) } </li> "
		end 
		nav
	end
end
