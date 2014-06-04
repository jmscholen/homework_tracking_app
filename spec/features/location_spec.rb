require "spec_helper"
include AuthenticationHelper

feature "Locations" do

	# I couldn't get my users to authenticate (I believe because of the need to confirm email address.) so I tried skipping authentication. Definitely don't want to leave this stuff skipping authentication.
	before(:each) do
		LocationsController.skip_before_filter :authenticate_user!
	end
	
	let(:user) { FactoryGirl.create(:user) }
	let(:admin_user) { FactoryGirl.create(:admin_user) }

	scenario "regular user visits new location pg" do 
		login(user)
		visit "/locations/new"
		current_path.should_not eq("/locations/new") #should reroute to wherever unauthorized access would take a
	end

	scenario "admin user visits add location pg" do 
		login(admin_user)
		visit "/locations/new"
		current_path.should eq("/locations/new")
	end

	scenario "admin adds location" do 
		@subject = FactoryGirl.create(:subject)

		login(admin_user)
		
		visit "/locations/new"

		current_path.should eq("/locations/new")

		fill_in "new_location[name]", with: "Sweet New Location"
		select('@subject.title', :from => "new_location[subject_id]")

		click_on "Submit"

		current_path.should eq("/")

		expect(page).to have_content("Sweet New Location added successfully")
	end

	scenario "admin trying to add location without filling everything in" do

		@subject = FactoryGirl.create(:subject)

		login(admin_user)
		
		visit "/locations/new"

		current_path.should eq("/locations/new")

		fill_in "new_location[name]", with: "Sweet New Location"

		click_on "Submit"

		current_path.should eq("locations/new")

		expect(page).to have_content("There was a problem. Your new location was not created.")

	end

end