Rails.application.routes.draw do
  root to: "application#homepage"
  resources :artists
  resources :genres
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
