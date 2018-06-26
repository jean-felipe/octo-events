Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/events', to: 'events#list'

  get '/issues/:number/events', to: 'issues#index'
end
