class Notifications < ActionMailer::Base
  def thinking_of_you(user)
    @user = user
    mail :to => user.email, :from => 'chloe.stinetorf@gmail.com', :subject => "thinking of you!"
  end
end