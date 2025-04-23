class IndexController < ApplicationController

    def page
        @landing_image = Image.find(1)
        render :index
    end 

end
