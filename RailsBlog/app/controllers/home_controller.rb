class HomeController < ApplicationController
  def index
  end
  def new
    @npost = Home.new    
  end
end
