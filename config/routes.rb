Rails.application.routes.draw do
  root :to => 'pages#home'

  get 'products' => 'products#index'

  resources :products do
    resources :reviews, :except => [:show, :index]
  end

end
