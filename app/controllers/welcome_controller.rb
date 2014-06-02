class WelcomeController < ApplicationController
  def index
  	@cohorts = Cohort.all
  	@new_cohort = Cohort.new 
  	@enrollments = Enrollment.all
  end
end
