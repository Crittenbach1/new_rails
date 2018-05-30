Rails.application.routes.draw do
  devise_for :users
  root 'genre#index'
end
