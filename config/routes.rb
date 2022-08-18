Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # get 'top_restaurants', to: 'restaurants#top'
  # get 'new_restaurant', to: 'restaurants#new', as: :new
  # get 'edit_restaurant', to: 'restaurants#edit', as: :edit
  # get 'restaurant', to: 'restaurants#show', as: :restaurant

  root to: 'restaurants#index'
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :review, only: [ :new, :create ]
  end
end
