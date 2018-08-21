Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'about',          to: 'restaurants#about',      as: :about
  get 'contact',        to: 'restaurants#contact',    as: :contact
  get 'direction',      to: 'restaurants#direction',  as: :direction
  get 'restaurants',     to: 'restaurants#index',     as: :index
  get 'restaurants/:id', to: 'restaurants#show',      as: :restaurant

  resources :restaurants

end
