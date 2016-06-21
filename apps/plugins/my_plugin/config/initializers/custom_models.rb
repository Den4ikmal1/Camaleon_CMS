CamaleonCms::Site.class_eval do
  has_many :my_plugins, class_name: "Plugins::MyPlugin::MyPlugin",  foreign_key: :site_id, dependent: :destroy
  has_many :users, class_name: "Plugins::MyPlugin::User",  foreign_key: :site_id, dependent: :destroy
  has_many :identities, class_name: "Plugins::MyPlugin::Identity",  foreign_key: :site_id, dependent: :destroy

end