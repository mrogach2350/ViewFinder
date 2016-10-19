class LandmarksController < ApplicationController
	def index
		@landmarks = Landmark.all
	end

	def show
		@photo = Photo.new(params[:image])
		# todo - :id needs to change to :landmark_id at some point
		@landmark = Landmark.find_by_id(params[:id])
	end

	def vote 
		value = params[:type] == "up" ? 1 : -1
		@landmark = Landmark.find_by_id(params[:id])
		@landmark.add_evalution(:votes, value, current_user)
		redirect_to :back, notice: "Thank you for voting!"
	end

end

