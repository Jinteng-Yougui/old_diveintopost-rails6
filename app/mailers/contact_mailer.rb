class ContactMailer < ApplicationMailer
  def contact_mail(agenda)
    @agenda = agenda
    @users = Team.find(@agenda.team_id).users
    mail to: @users.pluck(:email), subject: I18n.t('views.messages.delete_agenda_notice')
  end
end
