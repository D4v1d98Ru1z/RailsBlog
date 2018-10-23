class HomeController < ApplicationController
  def index
    @nposts = Home.all
  end
  def new
    @npost = Home.new    
  end
  def create 
    @npost = Home.new(post_params)
    if @npost.save
      redirect_to  home_path, notice: "Post created"
    else 
      render :new, alert: "Post wasn't created"
    end
  end
  
  #define a method for post params private
  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
