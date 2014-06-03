require 'spec_helper'

feature "authentication" do 
	let(:user) {FactoryGirl.create(:user)}
	let(:admin) {FactoryGirl.create(:admin)}

	scenario "adding a location" do 
		visit "/login"
		fill_in "email", with: admin.email
		fill_in "password", with: admin.password
		click_button "Sign In"
		click_on("Add Location")
		page.should have_content("Create")
	end

	scenario "adding location prohibited" do
		visit "/login"
		fill_in "email", with: user.email
		fill_in "password", with: user.password
		click_button "Sign In"
		click_on("Add Location")
		page.should have_content("unauthorized")
	end


end

