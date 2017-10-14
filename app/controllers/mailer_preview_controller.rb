class MailerPreviewController < ActionMailer::Preview
  def email_receipt
    Mailer.email_receipt(User.first)
  end
end
