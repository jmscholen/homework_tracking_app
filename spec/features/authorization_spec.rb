require "spec_helper"
include AuthenticationHelper

feature "authentication" do 
	let(:user) {FactoryGirl.create(:user)}
	let(:admin_user) {FactoryGirl.create(:admin)}

	scenario "user signs up" do 
		visit "/users/sign_up"
		current_path.should_not eq("/users/sign_up") #anyone should be able to sign up. I believe.
	end

end

