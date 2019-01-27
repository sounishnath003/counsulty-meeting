class MeetingMailer < ApplicationMailer
   helper :application

   default from: "notification@letsconsulty.com"


  def meeting_schedule
    @meeting = params[:meeting]
    @user = params[:user]

    mail(to: @user.email, subject: "New Session Confirmation")
  end

end
