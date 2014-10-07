module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
			nav += "<li>" + link_to('All users', users_path) + "</li> "
			nav += "<li>" + link_to('Edit user', edit_user_path) + "</li> "
			nav += "<li>" + link_to('All Kids', kids_path) + "</li> "
			nav += "<li>" + link_to('Register A Kid', new_kid_path) + "</li> "
			nav += "<li>" + link_to('All Trips', trips_path) + "</li> "
			nav += "<li>" + link_to('Register A Trip', new_trip_path) + "</li> "
			nav += "<li>" + link_to('All Schools', schools_path) + "</li> "
			nav += "<li>" + link_to('Register A School', new_school_path) + "</li> "
			nav += "<li>  #{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => "Are you sure?"})  }</li> "
			# nav += #{ <a href='/users/" + <%= @current_user.id %> + "'> <img src=" + <%= @current_user.image %> + "class='profile_icon' > </a>"	}			
		else 
			nav += "<li> #{ link_to('Sign Up', new_user_path) }</li> "
			nav += "<li> #{ link_to('Login', login_path) } </li> "
		end 
		nav
	end
end
