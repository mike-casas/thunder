class Email < ActionMailer::Base


  default from: "Thunder Apps<info@thunderapp.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.confirmacion.subject
  #
  def confirmacion(parametro)
    @user = parametro
    mail(to: @user.email,subject:"Bienvenido a Thunder Apps")
  end

  def match(p,current_user)
      @friend = p

      @current_user=current_user
#orendon@gmail.com
    mail(to: @friend.email,subject:"Grandes Promociones")

  end
end
