Rails.application.routes.draw do
  root 'landing#show'

  resources :tutors
  
  get 'tutors/session/:id', to: 'tutors#createsession'

  resources :students

  get 'search', to: 'search#show', as: 'search'

  get 'logout', to: 'sessions#logout', as: 'logout'

  match 'auth/:provider/callback', to: 'sessions#redirect', via: [:post,:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
