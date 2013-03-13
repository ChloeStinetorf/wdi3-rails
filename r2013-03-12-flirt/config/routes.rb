R20130312Flirt::Application.routes.draw do

  root :to => 'home#index'
  resources :subscribers, :only => [:create, :new]
  get '/login' => 'session#new'

end
