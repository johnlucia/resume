class LeadMailer < ApplicationMailer
  default :from => 'no_reply@johnlucia.com'

  def send_lead_email(lead)
    @lead = lead
    mail( :to => @lead.email,
    :subject => 'Thanks for the message!' )
  end

  def notify_me(lead)
    @lead = lead
    mail( :to => ENV['MY_EMAIL'],
    :subject => 'Got One!' )
  end
end
