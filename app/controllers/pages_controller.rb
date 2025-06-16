class PagesController < ApplicationController


    def about
        @about = @user.bio
        render :about
    end 

    def contact
        @phone = @user.phone.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')

        render :contact
    end
    
    def policy
        @policy = @user.policy
        render :policy
    end

    def car
        @car = Car.find(params[:car_id])
        render :car
    end

    def send_email
        @user = User.find(1)
        
        
        ContactMailer.contact_email(
            first_name: params[:first_name],
            last_name: params[:last_name],
            phone: params[:phone],
            email: params[:email],
            message: params[:message]
        ).deliver_now

        flash[:notice] = "Email sent successfully!"
        redirect_to contact_path
    end
end
