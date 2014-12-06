#set_encoding: UTF-8
class UserMailer < ActionMailer::Base
  default from: 'bestnidproject@gmail.com'
  def you_win(user,ofert)
    @user=user
    @ofert=ofert
    mail(to: @user.email, subject: '¡Ganaste una subasta!')
  end

   def info_winner(user, ofert)
  	@user=user
    @ofert=ofert
    @producto=Producto.find(@ofert.producto_id)
  	mail(to:User.find(@producto.user_id).email ,subject:'Datos de contacto del ganador')
  end
  
end