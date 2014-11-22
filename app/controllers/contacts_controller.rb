class ContactsController < ApplicationController
	 
  def new
  	@contact = Contact.new()
  end

  def create
  	@contact = Contact.new(contact_params)
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
      params.require(:contact).permit(:motivo, :contenido)
  end
end


