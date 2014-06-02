class Cohort < ActiveRecord::Base
	has_and_belongs_to_many :enrollments
	belongs_to :location
	belongs_to :subject
end
