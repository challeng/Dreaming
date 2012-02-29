LucidDreaming::Application.routes.draw do
  resources :forum_sections

  resources :resources

  resources :users

  root :to  => 'pages#home'
  get '/about' => 'pages#about'
  get '/resources' => 'resources#index'
  get '/forums'  => 'pages#forums'
  
end
