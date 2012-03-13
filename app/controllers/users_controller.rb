class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => 'sign_up'
  
  def profile
    @user = current_user
  end
  
  def sign_up
    @user = User.new
  end
  
  
end