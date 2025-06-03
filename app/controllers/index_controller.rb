class IndexController < ApplicationController

    def page
        @user = User.find(1)
        @car = Car.order(:id).first
        render :index
    end 

end
