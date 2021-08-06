class OoController < ApplicationController
  def home
    @user = current_user
    @image1 = Homepageimage.first
    @images = Homepageimage.all_except(@image1)
    @users= User.limit(5)
    @blog1=Blog.last
    @blog2=Blog.offset(1).last
    @blog3=Blog.offset(2).last
    @blog4=Blog.offset(3).last
    @projects=Project.all
  end
  def new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @blog = @user.blogs.order('created_at DESC').paginate(page: params[:page], per_page: 7)
    @meetup=@user.meetups.order('created_at DESC')
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
