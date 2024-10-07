Rails.application.routes.draw do
  
  resources :articles do
    resources :comments # Nested resource/rota aninhada
    resources :likes
  end
end
