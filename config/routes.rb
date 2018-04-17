Rails.application.routes.draw do
  root 'landing#show'
  
  get 'search', to: 'search#show', as: 'search'
  
  get 'logout', to: 'sessions#logout', as: 'logout'
  
  match 'auth/:provider/callback', to: 'sessions#redirect', via: [:post,:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
