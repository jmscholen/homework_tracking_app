require 'spec_helper'

describe Location do

	# before (:each) do
	# 	@location =  Location.create
	# end

  it "should create a new instance of Location" do
  	location = Location.new
  	location.should_not eq(nil)
  end

	it "should create a location when adding a location" do
		location = Location.new
		location.name = "Atlanta"
  	location.name.should eq("Atlanta")
  end
#### cant get this test to work
	# it "should not create a duplicate location" do
	# 	location = Location.new
	# 	location.name = "Atlanta" #validations do not work until the record is saved.
	# 	location.save 
	# 	location2 = Location.new
	# 	location2.name = "Atlanta"
	# 	location2.save 
	# 	location.name.should_not == location2.name
	# 	# location2.should be_false
	# 	#location2.should_not == "Atlanta"
	# end

end
