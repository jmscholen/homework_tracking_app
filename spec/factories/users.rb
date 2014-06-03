FactoryGirl.define do 
	factory(:user) do 
		email "student@example.com"
		password "password"
		password_confirmation "password"
	end

	factory(:admin) do
		email "admin@example.com"
		password "password"
		password_confirmation "password"
	end

end