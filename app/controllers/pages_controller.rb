class PagesController < ApplicationController

    def about 
        render :about
    end 

    def contact
        render :contact
    end
    
    def policy
        render :policy
    end

end
