Rails.application.routes.draw do
  get 'search/show'

  root 'landing#show'
  match 'auth/:provider/callback', to: 'sessions#redirect', via: [:post,:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
