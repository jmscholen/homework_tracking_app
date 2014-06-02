class HomeworkAssignment < ActiveRecord::Base
	belongs_to :cohort
	has_many :homework_submissions
end
