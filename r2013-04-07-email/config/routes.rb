R20130407Email::Application.routes.draw do

  root :to => 'users#index'

  resources :users do
    member do
      get :email
    end
  end

end
