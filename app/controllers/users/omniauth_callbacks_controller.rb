class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    # # You need to implement the method below in your model
    # @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
    # 
    # if @user.persisted?
    #   flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Twitter"
    #   sign_in_and_redirect @user, :event => :authentication
    # else
    #   session["devise.twitter_data"] = request.env["omniauth.auth"]
    #   redirect_to "/users/sign_up"
    # end
    
    #puts request.env["omniauth.auth"].info
    
    session["twitter_token"] = request.env["omniauth.auth"].credentials.token
    session["twitter_token_secret"] = request.env["omniauth.auth"].credentials.secret
    # 
    @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
    
    session["screen_name"] = @user.screen_name
    
    #if the user was CREATED
    if @user.persisted?
      #SIGN_IN_AND_REDIREC
      sign_in_and_redirect @user, :event => :authentication
      #redirect_to "/", :event => :authentication
    else
      #redirect_to "/about"
      redirect_to '/users/sign_up_from_twitter'
    end
    
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Twitter"
    #sign_in_and_redirect @user, :event => :authentication
    #sign_in_and_redirect "/", :event => :authentication
    #redirect_to "/", :event => :authentication
    
  end
end