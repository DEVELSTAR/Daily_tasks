class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order(:created_at)
  end

  def user_posts
    @user_name = params[:user_name]
    @user = User.find_by(name: @user_name)
    @user_posts = @user.posts.includes(:user) if @user
  end

  def by_date
    desired_date = Date.parse('2023-07-18')
    @posts = Post.where(date: desired_date)
  end

  def by_time
    desired_time = Time.parse('14:30:00')
    @posts = Post.where(time: desired_time)
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:math, :science, :english, :period, :user_id)
  end
end