module Plugins::MyPlugin::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def my_plugin_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def my_plugin_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def my_plugin_on_upgrade(plugin)
  end
   def current_u
    begin 
      Plugins::MyPlugin::User.find(session["warden.user.user.key"][1][1]) 
    rescue
      nil
    end 
   end
   def delete
     session["warden.user.user.key"] = nil
   end
 
   
end
