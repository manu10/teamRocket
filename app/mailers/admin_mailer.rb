class AdminMailer < ActionMailer::Base
  def contact_with_admin(contacto)
    mail(:to => "facundo1021511@gmail.com", :subject => contacto.motivo, :from => "facundo1021511@gmail.com" )
  end
end
