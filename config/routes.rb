AuthFromScratch::Application.routes.draw do
<<<<<<< HEAD


  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "log_out" => "sessions#destroy", :as => "log_out"

  root to: "users#new"
  resources :users
  resources :sessions

=======
>>>>>>> 58d94e6e6e6c9f58185301eaed3d3598cb07679f

  # These two just give us the better urls
  get "log_in" => "sessions#new", as: "log_in"
  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", as: "log_out"

  root to: "users#new"
  resources :users
  resources :sessions
end
