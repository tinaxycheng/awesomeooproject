class OoController < ApplicationController
  def home
  end

  def new
    
  end

  def show
  end

  def create
    @user = User.new
    if @user.save
      redirect_to oo_path (@user)
    else
      render :register
    end
  end

end
