class LandingController < ApplicationController
  def index

  end
  def new
  end
  def create
    render plain: params[:post].inspect
    #format.json { render json: params[:post].inspect }
  end
end