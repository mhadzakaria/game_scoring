Rails.application.routes.draw do
  resources :remi_games

  root 'remi_games#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
