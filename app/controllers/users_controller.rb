class UsersController < ApplicationController
	def user_params
        params.require(:user).permit(:name, :story, :avatar) ## Add :image attribute
	end

  

  end
