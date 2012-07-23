class ContactUsController < ApplicationController
	
  def new
    @contact_us = ContactUs.new
  end

  def create
    @contact_us = ContactUs.new(params[:contact_us])

    if @contact_us.valid?
      ContactUsMailer.send_confirmation(@contact_us).deliver
      flash[:notice] = 'Thank you. Your message has been sent.'
      redirect_to :action  => :new
    else
      render :action => "new"
    end
  end
  
end