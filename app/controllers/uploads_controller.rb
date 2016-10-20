#require cloudinary
class UploadsController < ApplicationController
  def upload
    @params = params[:image_file]
    if params[:image_file].present?
      @preload = Cloudinary::PreloadedFile.new(params[:image_file])
      @image = @preload.identifier
      #Cloudinary::Uploader.upload(params[:file], :public_id => 'test')
    end
    render(:new)
  end

  def post_params
    params.require(:post).permit(:name)
  end
end
