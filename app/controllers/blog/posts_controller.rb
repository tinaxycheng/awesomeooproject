class Blog::PostsController < ApplicationController
	def index
   @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
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
    redirect_to blog_posts_path(current_user)
  end
end
