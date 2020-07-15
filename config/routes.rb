Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  get'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'posts#index', as: 'home'

get 'about' => 'pages#about', as: 'about'

resources :posts do 
  resources :comments
end

end
