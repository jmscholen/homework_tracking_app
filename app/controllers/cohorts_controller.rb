class CohortsController < ApplicationController
	def index
		@cohorts = Cohort.all
	end

	def show
	end

	def new
	end

	def create
		@new_cohort = Cohort.new(cohort_params)
		subject = Subject.find(@new_cohort.subject_id)
		location = Location.find(@new_cohort.location_id)
		date = cohort_date(@new_cohort.start_date)
		@new_cohort.title = "Cohort-#{subject.title}-#{date}-#{location.name}"

		if @new_cohort.save
			redirect_to root_path
		else
			redirect_to root_path, notice: "There was a problem. Your Cohort was not created."
		end

	end

	def edit
	end

	def update
	end

	def destroy
	end


	private

	def cohort_params
		params.require(:cohort).permit(:subject_id, :location_id, :start_date, :end_date, :enrollment_size, :title)
	end

end
