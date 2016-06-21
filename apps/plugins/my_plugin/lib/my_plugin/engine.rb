require 'bootstrap-sass'
require "devise"
require 'omniauth'
require 'omniauth-facebook'

module MyPlugin
  class Engine < ::Rails::Engine
  	initializer :assets do |config|
		  Rails.application.config.assets.precompile += %w{application.css }
		  Rails.application.config.assets.paths << root.join("app", "assets", "javascripts")
		  Rails.application.config.assets.paths << root.join("app", "assets", "stylesheets")
		end
  end
end
