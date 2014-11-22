class ContactsController < ApplicationController
	 
  def new
  	@contact = Contact.new()
    if user_signed_in? 
        @contact.user_email=current_user.email
    end
  end

  def create
  	@contact = Contact.new(contact_params)
    if !@contact.user_email
        @contact.user_email=current_user.email
    end
    if @contact.valid?
      AdminMailer.contact_with_admin(@contact).deliver
      flash[:notice] = "Mensaje enviado. Lo contactaremos en breve"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

private
  def contact_params
      params.require(:contact).permit(:user_email, :motivo, :contenido )
  end
end


