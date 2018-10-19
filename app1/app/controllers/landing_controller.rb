class LandingController < ApplicationController
  def index

  end
  def new
    @post = Post.find(params[:id])
  end
end
