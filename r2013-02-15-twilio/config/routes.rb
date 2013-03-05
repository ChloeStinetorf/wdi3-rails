R20130215Twilio::Application.routes.draw do
  resources :users do
    collection do
      post 'sendtxt'
    end
  end

  root :to => 'users#index'
  get '/users' => 'users#index'

end
