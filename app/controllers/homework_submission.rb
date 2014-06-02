class HomeworkSubmission < ActiveRecord::Base
	belongs_to :homeworks_assignments
	belongs_to :user
end
