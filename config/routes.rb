LucidDreaming::Application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", 
                                     :registrations => "registrations"}
  
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
  
  devise_scope :user do
    match '/users/sign_up_from_twitter' => 'registrations#new_from_twitter'
  end
  #get '/users/sign_up_from_twitter' => 'registrations#new_from_twitter'
  
end
