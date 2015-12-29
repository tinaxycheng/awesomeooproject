class OoController < ApplicationController
  def home
    @user = current_user
  end
  def new
    @user = current_user
  end

  def show
    @user = current_user
    @blog = current_user.blogs.first
  end
  

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to oo_path(@user)
    else
      flash.now[:error] = @user.errors.messages.first.join(" ")
      render 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:name, :story, :avatar)
  end
  def blog
  end
  def edit
    @user = current_user
  end

end
