class NotherapistMailer < ApplicationMailer
  def notherapist(user, therapist)
    @user = user
    @therapist = therapist
    mail to: @user.email, subject: "We do not have more therapist of this category", from:"adi_111@icloud.com"
  end
end
