class LandmarksController < ApplicationController
	def index
		@landmarks = Landmark.all
	end

	def show
		# todo - :id needs to change to :landmark_id at some point
		@landmark = Landmark.find_by_id(params[:id])
	end

end

