Rails.application.routes.draw do

  # resources :comments
  resources :articles

  resources :articles do
    resources :comments # Nested resource/rota aninhada
  end
end
