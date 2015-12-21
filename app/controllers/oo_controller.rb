class OoController < ApplicationController
  def home
    @user = User.first
  end
  def new
    @user = User.first
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.first
    if @user.update_attributes(user_params)
      redirect_to oo_path(@user)
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:name, :story, :avatar)
  end
  def blog
  end
  def edit
    @user = User.find(params[:id])
  end

end
