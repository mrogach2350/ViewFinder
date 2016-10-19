class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @photos = Photo.all
  end



  def show
    @photo = Photo.find_by_id(params[:id])
    @user = User.find_by(id: @photo.user_id)
    @landmark = Landmark.find_by(id: @photo.landmark_id)
  end

  def new
    @landmark = Landmark.find_by_id(params[:landmark_id])
    @photo = @landmark.photos.build
  end

  def create
    @photo = Photo.create(photo_params)
    if params[:url].present?
      @preload = Cloudinary::PreloadedFile.new(params[:url])
      @url = @preload.identifier
      #Cloudinary::Uploader.upload(params[:file], :public_id => 'test')
    end
    @photo.url = @url
    if @photo.save
      redirect_to landmark_photo_path(@photo.landmark, @photo) #@photo.landmark_id, @photo.id works

    else
      flash[:error] = 'There has been an error'
    end
  end

  def update
    @photo = Photo.find_by_id(params[:id])
    @photo.update_attributes(photo_params)
    redirect_to @photo
  end

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private
    def photo_params
      photo_params = params.require(:photo).permit(:title, :caption, :url)
      # foobar = photo_params.merge({landmark_id: Landmark.first.id, user_id: User.first.id})
      photo_params.merge({landmark_id: params[:landmark_id], user_id: current_user.id})
      # Rails.logger.info "The photo params is: #{foobar.inspect}"
      # foobar
    end
end


  # def current_user
  #   @current_user ||= User.find_by_id(params[:user_id]) || User.find(1)
  # end
