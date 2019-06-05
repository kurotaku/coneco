class PostsController < ApplicationController

  def index
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(posts_params)
  	if @post.save
      flash[:success] = '投稿しました'
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def posts_params
    params.require(:post).permit(:content)
  end

end

