class Plugins::MyPlugin::User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :identities, class_name: "Plugins::MyPlugin::Identity" 
  
  self.table_name = 'users'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,  omniauth_providers: [:facebook]

   
  def self.find_for_oauth(auth)
    authorization = Plugins::MyPlugin::Identity.where(provider: auth.provider, uid: auth.uid.to_s).first
    return authorization.user if authorization

    email = auth.info[:email]
    user = Plugins::MyPlugin::User.where(email: email).first
    if user
      user.create_authorization(auth)
    else
      password = Devise.friendly_token[0, 20]
      user = Plugins::MyPlugin::User.create!(email: email, password: password, password_confirmation: password)
      user.create_authorization(auth)
    end

    user
  end

  def create_authorization(auth)
    self.identities.create(provider: auth.provider, uid: auth.uid)
  end


end
