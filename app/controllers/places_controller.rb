class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    Place.create!(place_params)
    redirect_to root_path
  end

  def upvote
    @place = Place.find(params[:id])
    @place.upvote_by current_user
    redirect_to root_path
  end

  def downvote
    @place = Place.find(params[:id])
    @place.downvote_by current_user
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :image_path)
  end
end
