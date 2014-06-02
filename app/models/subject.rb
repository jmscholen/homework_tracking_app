class Subject < ActiveRecord::Base
	has_many :locations
	has_many :cohorts

	accepts_nested_attributes_for :locations
	
end
