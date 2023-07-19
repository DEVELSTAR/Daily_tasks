class HomeController < ApplicationController
  def index
    @ayan_posts = Post.joins(:user).where(users: { name: "Ayan" })
    @anam_posts = Post.joins(:user).where(users: { name: "Anam" })
    @neha_posts = Post.joins(:user).where(users: { name: "Neha" })
  end
end
