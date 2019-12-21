class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

    def welcome_email(overall)
      @overall = overall
      @url = 'http://140.121.80.184:3000/overall'
      mail to: @overall.email, subject:"開通Overall帳號"
    end
end
