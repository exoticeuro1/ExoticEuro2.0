class IndexController < ApplicationController

    def page
        @user = User.find(1)
        @cars = Car.order(:id).all

        render :index
    end 

end
