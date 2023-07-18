class PostsController < ApplicationController
  def index
    @all_posts = Post.all
  end

  def by_name
    @posts_by_name = Post.where(name: params[:name])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :math, :science, :english, :time, :date, :period)
  end
end