RoSite::Application.routes.draw do
  get "pages/index"

  devise_for :users

  root :to => 'pages#index'

  match '/process'  => 'pages#process', as: :process
  match '/about'	=> 'pages#about',	as: :about

end
