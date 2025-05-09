class IndexController < ApplicationController

    def page
        @user = User.find(1)
        @car = Car.order(:id).first
        @feature = Car.order(:id).first.images.order(:created_at).first

        render :index
    end 

end
