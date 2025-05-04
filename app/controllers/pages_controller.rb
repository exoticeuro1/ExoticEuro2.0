class PagesController < ApplicationController

    def about 
        @user = User.find_by(id: 1)
        @about = @user.bio
        render :about
    end 

    def contact
        @user = User.find_by(id: 1)
        @phone = @user.phone.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')

        render :contact
    end
    
    def policy
        @user = User.find_by(id: 1)
        @policy = @user.policy
        render :policy
    end

end
