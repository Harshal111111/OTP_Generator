Rails.application.routes.draw do
  root 'users#new' 
  resources :users do
    member do
      get 'generate_otp'
      post 'verify_otp'
    end
  end
end
