class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @photos = Photo.find_with_reputation(:votes, :all, order: "votes desc")
  end



  def show
    @photo = Photo.find_by_id(params[:id])
    @user = User.find_by(id: @photo.user_id)
    @landmark = Landmark.find_by(id: @photo.landmark_id)
    @new_comment = Comment.build_from(@photo, current_user.id, "") if current_user
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
    # Cloudinary::Uploader.destroy('n69jwgmxzwrloxa3nzgp', invalidate: true)

    @photo = Photo.find_by_id(params[:id])
    @user = @photo.user
    @photo.destroy
    redirect_to @user
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    # @landmark = Landmark.find_by(id: @photo.landmark_id)
    @photo = Photo.find_by_id(params[:id])
    @photo.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thank you for voting!"
  end

  private
    def photo_params
      photo_params = params.require(:photo).permit(:title, :caption, :url)
      photo_params.merge({landmark_id: params[:landmark_id], user_id: current_user.id})
    end
end
