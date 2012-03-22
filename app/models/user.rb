class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name,
                  :last_name, :location, :bio, :been_lucid, :screen_name
                  
  def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    puts data
    if user = User.where(:screen_name => data.screen_name).first
      user
    else # Create a user with a stub password. 
      #User.create!(:email => data.email, :password => Devise.friendly_token[0,20])
      User.new(:screen_name => data.screen_name)
      #User.create!(:email => "#{Devise.friendly_token[0,20]}5@twitter.com", :password => Devise.friendly_token[0,20])
      #redircect_to "/users/sign_up", :screen_name => data.screen_name
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.twitter_data"] && session["devise.twitter_data"]["extra"]["raw_info"]
        user.email = data["email"]
        user.screen_name = data["screen_name"]
      end
    end
  end
  
end
