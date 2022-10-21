Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: 'pages#landing_page', :as => 'landing_page'
  resources :categories
  resources :customers
  resources :therapists
  get '/about' => 'pages#about', :as => 'about_page'
  get '/legal_disclaimer' => 'pages#legal_disclaimer'
end
