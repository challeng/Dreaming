LucidDreaming::Application.routes.draw do
  
  devise_for :users

  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

  resources :forum_sections

  resources :resources

  root :to  => 'pages#home'
  get '/about' => 'pages#about'
  get '/resources' => 'resources#index'
  get '/forums'  => 'pages#forums'
  get '/profile' => 'users#profile'
  
end
