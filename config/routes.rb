Rails.application.routes.draw do
  devise_for :users
  root to: 'bikes#top'
  resources :bikes do
    resources :rentals, only: [:new, :create]
      collection do
      get :top
    end
  end
  resources :rentals, only: [:destroy]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

