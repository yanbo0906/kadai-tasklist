Rails.application.routes.draw do
    root to:'tasks#index'
    
    get 'signup', to: 'users#new'
    resources :tasks
    resources :users, except: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
