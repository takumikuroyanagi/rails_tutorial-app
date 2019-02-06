Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  root to: 'static_pages#home' 
  get 'users/new' #Railsのコントローラ記述規則に従っているため省略して記述可能
  get  '/help',    to: 'static_pages#help' # コントローラ#メソッド で記述されている
  get  '/about',   to: 'static_pages#about' 
  get  '/contact', to: 'static_pages#contact' 
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end