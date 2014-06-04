FactoryGirl.define do 

	factory(:user) do |f|
		f.email "student@example.com"
		f.password "password"
		f.password_confirmation "password"
		f.role "0"
	end

	# factory(:admin_user), class: :user do |f|
	# 	f.email "admin@example.com"
	# 	f.password "password"
	# 	f.password_confirmation "password"
	# 	f.role "1"
	# end

end