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

    def cars 
        @cars = Car.all
        render :cars
    end

    def car
        @car = Car.find(params[:car_id])
        render :car
    end
end
