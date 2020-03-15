Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :top
    root 'top#index'

    get'/top' => 'home#index'
    get'/login' => 'logins#show'

    resource :login
end
