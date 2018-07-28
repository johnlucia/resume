class LeadsController < ApplicationController
  def new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      LeadMailer.send_lead_email(@lead).deliver
      LeadMailer.notify_me(@lead).deliver
      redirect_to @lead, notice: 'Contact was successfully created.'
    else
      render :index
    end
  end

  def index
    @lead = Lead.new
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def resume
    @lead = Lead.new
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :email, :message)
  end
end
