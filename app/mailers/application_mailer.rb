# frozen_string_literal: true

# The ApplicationMailer class is the base mailer class for the Rails application.
# It provides common functionality and configuration for sending emails.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
