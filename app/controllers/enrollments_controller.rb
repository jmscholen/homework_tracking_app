class EnrollmentsController < ApplicationController
	def index
	end

	def show 
	end

	def new
		@new_enrollment = Enrollment.new
		if params[:cohort_id]
			@new_enrollment.cohort_id = params[:cohort_id]
		end

	end

	def create
		@new_enrollment = Enrollment.new(enrollment_params)
		if @new_enrollment.save
			redirect_to root_path
		else
			redirect_to root_path, notice: "There was a problem. Your enrollment is not valid"
		end
	end

	def edit 
	end

	def update
	end

	def destroy
	end

	private

	def enrollment_params
		params.require(:enrollment).permit(:cohort_id, :user_id, :status)
	end
end
