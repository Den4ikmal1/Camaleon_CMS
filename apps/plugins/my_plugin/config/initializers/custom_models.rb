CamaleonCms::Site.class_eval do
  has_many :myplugin, class_name: "Plugins::MyPlugin::MyPlugin", dependent: :destroy


end