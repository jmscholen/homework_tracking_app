class UsersController < ApplicationControllers
	
	def create
		@new_user = User.new(user_params)
		@new_user.skip_confirmation!
		if @new_user.save
			redirect_to "/"
		else 
			redirect_to "/", notice: "There was a problems with your sign up!"
		end
	end

end
