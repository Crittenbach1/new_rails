Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'genres#index'

  resource :genres, only: [:index, :new, :create, :show]

end
