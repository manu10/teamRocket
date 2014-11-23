class AdminMailer < ActionMailer::Base
  def contact_with_admin(contacto)
  	@contacto=contacto
    mail(:to => 'bestnidproject@gmail.com', :subject => @contacto.motivo, :from => 'bestnidproject@gmail.com' )
  end
end
