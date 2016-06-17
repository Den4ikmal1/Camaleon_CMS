class Plugins::MyPlugin::Identity < ActiveRecord::Base
	self.table_name = 'identities'
	belongs_to :site, :class_name => "CamaleonCms::Site", foreign_key: :parent_id

  belongs_to :user, :class_name => "Plugins::MyPlugin::User", foreign_key: :user_id

end
