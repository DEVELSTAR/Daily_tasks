class HomeController < ApplicationController
  def index
    @names = Post.pluck(:name).uniq
  end
end
