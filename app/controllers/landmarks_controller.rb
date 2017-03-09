class LandmarksController < ApplicationController
	before_action :authenticate_with_http_digest
	def index
		@landmarks = Landmark.all
	end

	def show
		@photo = Photo.new(params[:image])
		# todo - :id needs to change to :landmark_id at some point
		@landmark = Landmark.find_by_id(params[:id])
	end

end
