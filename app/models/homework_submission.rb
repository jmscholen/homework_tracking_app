class HomeworkSubmissions < ActiveRecord::Base
	belongs_to :homework_assignment
	belongs_to :user
end