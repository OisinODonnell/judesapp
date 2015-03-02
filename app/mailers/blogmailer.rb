class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(user)

    if user
      @user = user
      @greeting = "Hi" + @user.name
      mail( :to => @user.email, :subject => "Registration Confirmation")
    end
  end

  def profileUpdate(user)

    if user
      @user = user
      @greeting = "Hi"
      mail( :to => @user.email, :subject => "Profile Successfully Updated")
    end
  end
end
