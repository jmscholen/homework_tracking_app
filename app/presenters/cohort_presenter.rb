class CohortPresenter 

	attr_accessor :start_date	

	def initialize(cohort)

		@start_date = start_date
	end

	def days_til_start
		d = @start_date - Date.today
		d.to_i
	end

end