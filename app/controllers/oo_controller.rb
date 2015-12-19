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

  def new
  end

  def show
  	@category = params
  	if @category = 1
  		render :blog
  	elsif @category = 2
  		render :slides
  	elsif @category = 3
  		render :register

  	end
  end

  def blog
  end

  def slides
  end

  def register
  end
  
  def create
  	@user = User.new(create_params)
  end

end
