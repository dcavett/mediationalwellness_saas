class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      #Declaring the variables and mapping to information gathered from contact form
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      
      #Method to deliver email through the contactMailer file
      ContactMailer.contact_email(name, email, body).deliver
      #Sending the success message
      flash[:success] = "Message Sent"
      redirect_to new_contact_path
    else
      #Sending the error message
      flash[:danger] = "Submission Failed, message has not been sent"
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end