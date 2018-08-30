Rails.application.routes.draw do
  get 'contact/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about',          to: 'restaurants#about',      as: :about
  get 'contact',        to: 'restaurants#contact',    as: :contact
  get 'direction',      to: 'restaurants#direction',  as: :direction
  get 'restaurants',     to: 'restaurants#index',     as: :index
  get 'restaurants/:id', to: 'restaurants#show',      as: :restaurant

  resources :restaurants

resources :contact, only: [:index, :new, :create]

end
