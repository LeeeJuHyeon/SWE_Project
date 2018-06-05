Rails.application.routes.draw do
  get 'sessions/new'
    resources :contacts, only: [:index, :create, :new]
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]

    get '/' => 'home#main'
    get '/index' => 'home#index'
    get '/contact' => 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
