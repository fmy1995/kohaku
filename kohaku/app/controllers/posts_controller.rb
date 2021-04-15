class PostsController < ApplicationController
  def new
    @post = Post.new
    @genres = Genre.where(is_active: true)
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def index
    @posts = Post.page(params[:page]).reverse_order
  end

  def show
   @post = Post.find(params[:id])
   @post_comment = PostComment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private
def post_params
params.require(:post).permit(:title, :body, :image, :category, :genre_id )
end
  
  
end
