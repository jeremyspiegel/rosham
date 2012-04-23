class PendingMatch < ActionMailer::Base
  default from: "mailer@rosh.am"

  def  pending_match(to, from)
    @from = from
    mail( :to => to, :subject => "You have a new rosham with #{from}!" )
  end
end
