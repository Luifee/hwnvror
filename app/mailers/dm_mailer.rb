class DmMailer < ApplicationMailer
    def say_hello_to(overall)
      @overall = overall
      mail to:@overall.email, subject:"開通Overall帳號"
    end
end
