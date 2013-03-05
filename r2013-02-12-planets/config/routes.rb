R20130212Planets::Application.routes.draw do
  root :to => 'planets#index'
  get '/planets' => 'planets#index'
  get '/planets/new' => 'planets#new'
  post '/planets' => 'planets#create'
  get '/planets/:id' => 'planets#show', :as => 'planet'
  post '/planets/:id/delete' => 'planets#delete', :as => 'delete'
  get '/planets/:id/edit' => 'planets#edit', :as => 'edit'
  post '/planets/:id' => 'planets#update'
end
