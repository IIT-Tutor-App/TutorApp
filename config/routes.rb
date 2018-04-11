Rails.application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#redirect', via: [:post,:get]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
