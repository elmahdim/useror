class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to ('/' + current_user.username)
		else
			redirect_to new_user_session_path
		end
	end
	
	before_action :authenticate_user!
	def profile
    	@user = User.find_by_username(params[:username])
  	end
end
