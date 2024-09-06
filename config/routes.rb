Rails.application.routes.draw do

  # Rotas de teste

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
