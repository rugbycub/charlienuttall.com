class ContactController < ApplicationController
  respond_to :html, :json

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to '/contact', @saved = true
      end

  end
  


  private

  def contact_params
    params.require("/contact").permit(:name, :email, :subject, :message)
  end
end
