R20130211StockMovie::Application.routes.draw do

  get '/home' => 'home#home'
  get '/about' =>'home#about'
  get '/faq' => 'home#faq'
  get '/movie' => 'movie#new'
  get '/poster' => 'movie#poster'
  get '/stock' => 'stock#new'
  get '/price' => 'stock#price'

  root :to => 'home#home'

end
