Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  root to: "index#page"

  # Landing page
  get "/", to: "index#page", as: "index"
  # Pages
  get "/about", to: "pages#about", as: "about"
  get "/contact", to: "pages#contact", as: "contact"
  post "/contact/send_email", to: "pages#send_email", as: "send_email"
  get "/policy", to: "pages#policy", as: "policy"
  get "/testing", to: "pages#testing", as: "testing"
  
  get "/car/:car_id", to: "pages#car", as: "car"
  # Dashboard
  get "/dashboard", to: "dashboard#page", as: "dashboard"
  # user
  patch "/dashboard/update_user", to: "dashboard#update_user", as: "update_user"
  # cars
  post "/dashboard/create_car", to: "dashboard#create_car", as: "create_car"
  
  get "/dashboard/edit_car/:car_id", to: "dashboard#edit_car", as: "edit_car"
  patch "/dashboard/update_car", to: "dashboard#update_car", as: "update_car"
  delete "/dashboard/delete_car", to: "dashboard#delete_car", as: "delete_car"
  # images
  post "/dashboard/create_image", to: "dashboard#create_image", as: "create_image"
  delete "/dashboard/delete_image", to: "dashboard#delete_image", as: "delete_image"


  get "/exp", to: "pages#exp", as: "exp"
end
