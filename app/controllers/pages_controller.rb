class PagesController < ApplicationController

    def about 
        @user = User.find_by(id: 1)
        @about = @user.bio
        render :about
    end 

    def contact
        render :contact
    end
    
    def policy
        @user = User.find_by(id: 1)
        @policy = @user.policy
        render :policy
    end

end
