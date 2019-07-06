class ApplicationMailer < ActionMailer::Base
  default from: 'overall <master@tempsite.org>'
  layout 'mailer'
end
