module UserManager
    extend ActiveSupport::Concern

    def edit_selected_user
        @user = User.find(params[:user_id])
        if @user.update(user_params)
            return true
        else 
            return false 
        end 
    end

    private
    def user_params
        params.permit(:name, :bio, :phone, :display_email, :location, :location_link, :youtube, :facebook, :instagram, :policy)
    end
end 