Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'user_profile#show'

  #get '/lists/:id', to: 'list#show', as: 'list'
  resources :list
end
