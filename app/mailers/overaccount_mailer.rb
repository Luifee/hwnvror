class OveraccountMailer < ApplicationMailer
	def say_hello_to(overall)
		@overall = overall
		mail to:@overall.email, subject:"Overall帳號開通連結"
	end
end
