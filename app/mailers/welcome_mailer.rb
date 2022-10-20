class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: "Welcome", from:"adi_111@icloud.com"
  end
end
