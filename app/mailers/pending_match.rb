class PendingMatch < ActionMailer::Base
  default :from => "jeremysspiegel@rosh.am"

  def  pending_match(match, url)
    @host = match.host
    @url = url
    mail( :to => match.guest, :subject => "You have a new rosham with #{match.host}!" )
  end
end
