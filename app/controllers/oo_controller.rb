class OoController < ApplicationController
  def home
    @user = current_user
    @image1 = Homepageimage.first
    @images = Homepageimage.all_except(@image1)
    @users= User.limit(5).order('created_at')
    @blog1=Blog.first
    @projects=Project.all
  end
  def new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @blog = @user.blogs
    @blog2= Blog.limit(3).order('created_at')
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
  def youtube_embed(youtube_url)
  if youtube_url[/youtu\.be\/([^\?]*)/]
    youtube_id = $1
  else
    # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
    youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
    youtube_id = $5
  end

  %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
  end
end
