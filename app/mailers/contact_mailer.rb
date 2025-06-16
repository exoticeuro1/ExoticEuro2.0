class ContactMailer < ApplicationMailer

    def contact_email(first_name:, last_name:, phone:, email:, message:)
        @user = User.find(1)

        @name = "#{first_name} #{last_name}"
        @phone = phone
        @email = email
        @message = message

        mail(
        to:      ENV['GMAIL_EMAIL'],                 # where you want to receive the message
        from:    %("#{@name}" <#{@email}>),                  # appears as the sender
        subject: "ExoticEuro New Inquiry"
        )
    end
end
