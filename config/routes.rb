Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#landing_page', :as => 'landing_page'
  get '/about' => 'pages#about', :as => 'about_page'
  get '/legal_disclaimer' => 'pages#legal_disclaimer'
end
