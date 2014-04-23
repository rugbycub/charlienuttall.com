class ContactController < ApplicationController
  respond_to :html, :json

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    flash[:notice] = "Message successfully submitted. Thanks for contacting me."
    render action: "index"
 

  end
  


  private

  def contact_params
    params.require("/contact").permit(:name, :email, :subject, :message)
  end
end
