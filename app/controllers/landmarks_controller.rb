class LandmarksController < ApplicationController
	before_filter :authenticate_with_http_digest
	def index
		@landmarks = Landmark.all
	end

	def show
		@photo = Photo.new(params[:image])
		debugger
		# todo - :id needs to change to :landmark_id at some point
		@landmark = Landmark.find_by_id(params[:id])
	end

	def vote 
		value = params[:type] == "up" ? 1 : -1
		@landmark = Landmark.find_by_id(params[:id])
		@landmark.photos.each do |photo|
			photo.add_evaluation(:votes, value, current_user)
		end

		redirect_to :back, notice: "Thank you for voting!"
	end

end

