LucidDreaming::Application.routes.draw do
  resources :users

  root :to  => 'pages#home'
  get '/about' => 'pages#about'
  get '/resources' => 'pages#resources'
  get '/forums'  => 'pages#forums'
  
end
