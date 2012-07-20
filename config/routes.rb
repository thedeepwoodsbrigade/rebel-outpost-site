RoSite::Application.routes.draw do
  get "pages/index"

  devise_for :users
  resources :messages

  root :to => 'pages#index'

  match '/process'  => 'pages#process', as: :process
  match '/about'	=> 'pages#about',	as: :about
  match '/contact'	=> 'messages#new',	as: :contact

end
