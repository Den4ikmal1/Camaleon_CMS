class Plugins::MyPlugin::FrontController < CamaleonCms::Apps::PluginsFrontController
  include Plugins::MyPlugin::MainHelper
  include Devise::Controllers::Helpers

  def index
  	
  end

end
