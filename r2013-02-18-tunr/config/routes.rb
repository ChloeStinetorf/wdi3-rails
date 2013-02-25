R20130218Tunr::Application.routes.draw do

  root :to => 'home#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :genres, :albums, :artists, :mixtapes

  resources :songs do
    member do
      get 'purchase'
      post 'buy'
    end
  end

end
