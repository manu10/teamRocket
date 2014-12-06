class AdminMailer < ActionMailer::Base
	default to:'bestnidproject@gmail.com', from:'bestnidproject@gmail.com'
  def contact_with_admin(contacto)
  	@contacto=contacto
    mail(:subject => @contacto.motivo)
  end
end

