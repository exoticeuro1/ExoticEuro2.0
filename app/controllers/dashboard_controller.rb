class DashboardController < ApplicationController
    before_action :authenticate_user!
    include CarManager
    include ImageManager
    include UserManager
    def page
        @user = current_user
        @cars = Car.all
        render :dashboard
    end

    def edit_car
        @car = Car.find(params[:car_id])
        render :edit_car
    end

    #region dashboard
# User ----------------------------------------------------------------------------------------------------------------
    def update_user
        unless (params[:location].blank? && params[:location_link]) || (params[:location].present? && params[:location_link].present?)
            flash[:alert] = "Please provide either both a location and a location link, or neither."
            redirect_to dashboard_path and return
        end
        
        if edit_selected_user
            flash[:notice] = "User updated successfully."
            redirect_to dashboard_path
        else
            flash[:alert] = @user.errors.full_messages.to_sentence
            redirect_to dashboard_path
        end
    end


    # Car ----------------------------------------------------------------------------------------------------------------

    def create_car
        if create_new_car
            flash[:notice] = "Car created successfully."
            redirect_to dashboard_path
        else
            flash[:alert] = @car.errors.full_messages.to_sentence
            redirect_to dashboard_path
        end
    end

    def update_car 
        if edit_selected_car
            flash[:notice] = "Car updated successfully."
            redirect_to edit_car_path(car_id: @car.id)
        else
            flash[:alert] = @car.errors.full_messages.to_sentence
            redirect_to edit_car_path(car_id: @car.id)
        end
    end

    def set_default_img
        @car = Car.find(params[:car_id])
        @image = Image.find(params[:image_id])
        if @car.update(display_image: @image.id)
            flash[:notice] = "Default image set successfully."
            redirect_to edit_car_path(car_id: @car.id)
        else
            flash[:alert] = @car.errors.full_messages.to_sentence
            redirect_to edit_car_path(car_id: @car.id)
        end
    end
    
    def delete_car
        if delete_selected_car
            flash[:notice] = "Car deleted successfully."
            redirect_to dashboard_path
        else
            flash[:alert] = @car.errors.full_messages.to_sentence
            redirect_to dashboard_path, alert: "Failed to delete car."
        end
    end

# ----------------------------------------------------------------------------------------------------------------

# Image ----------------------------------------------------------------------------------------------------------------
    def create_image
        @car = Car.find(params[:car_id])
        uploaded_file = params[:image]

        unless uploaded_file.present?
            flash[:alert] = "No file selected for upload."
            redirect_to edit_car_path(car_id: @car.id) and return
        end
        
        if create_new_image(uploaded_file, @car.id)
            flash[:notice] = "Image uploaded successfully."
            redirect_to edit_car_path(car_id: @car.id)
        else
            flash[:alert] = @image.errors.full_messages.to_sentence
            redirect_to edit_car_path(car_id: @car.id)
        end
    end

    def delete_image 
        @image = Image.find(params[:image_id])
        if delete_selected_image(@image)
            flash[:notice] = "Image deleted successfully."
            redirect_to edit_car_path(car_id: @car.id)
        else
            flash[:alert] = @image.errors.full_messages.to_sentence
            redirect_to edit_car_path(car_id: @car.id)
        end
    end

 
      
end
