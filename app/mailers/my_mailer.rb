class MyMailer < Devise::Mailer
	helper :application
	include Devise::Controllers::UrlHelpers

	def confirmation_instructions(record, token, opts={})
	  headers["Custom-header"] = "Bar"
	  opts[:subject] = "Testing Custom Mailer"
	  opts[:from] = "mail@example.com"
	  super
	end

	
end
