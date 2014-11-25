class UserMailer < ActionMailer::Base
  default from: 'bestnidproject@gmail.com'
  def winner_notification(user)
  	@user=user
  	mail(to: @user.email, subject: '¡Ganaste una subasta!')
  end

end
