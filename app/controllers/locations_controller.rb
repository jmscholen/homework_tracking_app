class LocationsController < ApplicationController
	def index
	end

	def show
	end

	def new
		@new_location = Location.new
		@new_location.subjects.build
	end

	def create
		@new_location = Location.new(location_params)
		if @new_location.save
			redirect_to root_path
		else
			redirect_to :new, notice: "There was a problem. Your new location was not created."
		end

	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def location_params
		params.require(:location).permit(:name, :subject_id, subjects_attributes: [:title, :course_number])
	end

end
