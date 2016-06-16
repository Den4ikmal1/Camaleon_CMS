class Plugins::MyPlugin::FrontController < CamaleonCms::Apps::PluginsFrontController
  include Plugins::MyPlugin::MainHelper
  def index
    # actions for frontend module
  end

  private
		def current_user
	  	@current_user ||= Plugins::Myplugin::MyPlugin.find(session[:user_id]) if session[:user_id]
		end
		helper_method :current_user
end
