class UserMailer < ApplicationMailer

  default from: "shivam1995k@gmail.com"
  default to: "shivam1995k@gmail.com"

  def new_user(user)
    @user = user
    mail to: user.email, subject: "Hello!"
  end
end
