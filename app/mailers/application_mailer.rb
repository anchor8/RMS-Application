# General Mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'rmspassreset@gmail.com'
  layout 'mailer'
end
