class PendingMatch < ActionMailer::Base
  default :from => "jeremysspiegel@gmail.com"

  def  pending_match(match)
    @from = match[:host]
    mail( :to => match[:guest], :subject => "You have a new rosham with #{@from}!" )
  end
end
