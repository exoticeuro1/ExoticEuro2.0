module CarManager
    extend ActiveSupport::Concern
    require "google/cloud/storage"
    include ImageManager
    def create_new_car
        @new_car = Car.new(car_params)
        uploaded_file = params[:car][:image]
        unless uploaded_file
            return false 
        end 

        if @new_car.save 
            
            if create_new_image(uploaded_file, @new_car.id)
                return true
            else
                @new_car.destroy
                return false
            end
        else
            return false
        end
    end 

    def edit_selected_car
        @car = Car.find(params[:car_id])
        if @car.update(car_params)
            return true
        else 
            return false 
        end 
    end 

    def delete_selected_car
        @car = Car.find(params[:car_id])
        if @car.destroy
            @car.images.each do |image|
                delete_selected_image(image)
            end
            return true
        else
            return false
        end
    end

    private 
    def car_params
        params.permit(:car_make, :car_model, :price, :miles, :description, :link, images: [])
      end
end 