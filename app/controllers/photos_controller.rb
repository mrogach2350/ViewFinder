class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by_id(params[:id])
    @user = User.find_by(id: @photo.user_id)
    @landmark = Landmark.find_by(id: @photo.user_id)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
