class Plugins::MyPlugin::MyPlugin < ActiveRecord::Base
	belongs_to :site, :class_name => "CamaleonCms::Site", foreign_key: :parent_id
	 
end