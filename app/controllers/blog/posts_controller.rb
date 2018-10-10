class Blog::PostsController < ApplicationController
	def index
   @blogs= Blog.all.order('created_at DESC')
   @search = params[:search]
   @blogs_search= Blog.search(@search).all
  end
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def vote_up
    begin
      current_user.vote_for(@blog = Blog.find(params[:post_id]))
      redirect_to blog_posts_path
    rescue ActiveRecord::RecordInvalid
      redirect_to blog_posts_path
    end
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


  def create
    @blog = current_user.blogs.build blog_params
    if @blog.save!
      redirect_to blog_post_path(@blog)
    else
      flash.now[:error] = @blog.errors.messages.first.join(" ")
      render 'new'
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      redirect_to blog_post_path(@blog)
    else
      flash.now[:error] = @blog.errors.messages.first.join(" ")
      render 'edit'
    end
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :image, :category_id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

    def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blog_posts_path
  end
end
