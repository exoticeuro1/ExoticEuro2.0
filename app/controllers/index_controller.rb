class IndexController < ApplicationController

    def page
        @user = User.find(1)
        render :index
    end 

end
