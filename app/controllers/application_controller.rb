class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  Cloudinary::Uploader.upload('http://imgur.com/CZmb3Qp.jpg', :public_id => 'golden_gate')

  include SessionsHelper


end
