class ContactMailer < ApplicationMailer

  def contact_mailer(picture)
    @picture = picture
    mail to: @picture.user.email, subject: "投稿の確認メール" 
  end
end
