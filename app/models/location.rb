class Location < ActiveRecord::Base
	has_many :subjects
	has_many :cohorts
	validates_uniqueness_of :name
	accepts_nested_attributes_for :subjects
	
end
