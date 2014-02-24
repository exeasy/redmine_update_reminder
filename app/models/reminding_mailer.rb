class RemindingMailer < ActionMailer::Base
  default from: Setting.mail_from

  def self.default_url_options
    Mailer.default_url_options
  end
  
  def reminder_email(user,watcher,issue)
    @user=user
    @issue=issue
    mail(to: @user.mail, subject: @issue.subject, cc: watcher )
  end
end
