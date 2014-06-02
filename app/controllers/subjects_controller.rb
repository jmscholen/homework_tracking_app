class SubjectsController < ApplicationController
	def index
	end

	def show
	end

	def new
		@new_subject = Subject.new
		@new_subject.locations.build
	end

	def create
		@new_subject = Subject.new(subject_params)
		if @new_subject.save
			redirect_to root_path
		else
			redirect_to :new, notice: "There was a problem. Your new subject was not created."
		end
		
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def subject_params
		params.require(:subject).permit(:title, :course_number, locations_attributes: [:name])
	end

end