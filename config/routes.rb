Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'user_profile#show'

  get '/lists/:id', to: 'lists#show', as: 'list'
end
