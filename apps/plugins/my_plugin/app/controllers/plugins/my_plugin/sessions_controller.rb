class Plugins::MyPlugin::SessionsController < ApplicationController
  def create
    user = Plugins::Myplugin::MyPlugin.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end