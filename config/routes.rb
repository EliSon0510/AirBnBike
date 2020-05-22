Rails.application.routes.draw do
  devise_for :users
  root to: 'bikes#top'
  resources :bikes do
    collection do
      get :top
    end
    resources :rentals, only: [:new, :create]

  end
  resources :rentals, only: [:destroy]

  get 'dashboard', to: 'pages#dashboard'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

