Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :devices, only: %[index]
  resources :users, except: %[update]
  resources :user_devices, except: %[update]
end
