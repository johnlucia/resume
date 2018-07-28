class LeadMailer < ApplicationMailer
  default :from => 'any_from_address@example.com'

  def send_lead_email(lead)
    @lead = lead
    mail( :to => @lead.email,
    :subject => 'Thanks for the message!' )
  end

  def notify_me(lead)
    @lead = lead
    mail( :to => "test@test.com",
    :subject => 'Got One!' )
  end
end
