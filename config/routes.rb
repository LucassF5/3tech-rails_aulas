Rails.application.routes.draw do

  # resources :likes

  # resources :comments
  resources :articles

  resources :articles do
    resources :comments # Nested resource/rota aninhada
  end

  resources :articles do
    resources :likes
  end
end
