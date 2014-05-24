A2gretna::Application.routes.draw do
  root :to => 'pages#home'
  
  get '/', to: 'pages#home'
  get '/whoweare', to: 'pages#whoWeAre'
  get '/whatwebelieve', to: 'pages#whatWeBelieve'
  get '/loveGod', to: 'pages#loveGod'
  get '/loveOneAnother', to: 'pages#loveAnother'
  get '/loveAll', to: 'pages#loveAll'
  get '/calendar', to: 'pages#calendar'
  
  resources :logins, :only => [:new, :create, :destroy]
  resources :podcasts
  resources :users

end
