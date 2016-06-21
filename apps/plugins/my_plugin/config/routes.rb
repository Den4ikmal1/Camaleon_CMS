Rails.application.routes.draw do

    scope PluginRoutes.system_info["relative_url_root"] do
    devise_for :users, class_name: "Plugins::MyPlugin::User", :module => :devise, :controllers => {  omniauth_callbacks: 'plugins/my_plugin/omniauth_callbacks' }      
          

      scope '(:locale)', locale: /#{PluginRoutes.all_locales}/, :defaults => {  } do
      
        # frontend
        namespace :plugins do
          namespace 'my_plugin' do
            get 'index' => 'front#index'
           
          end
        end
      end

      #Admin Panel
      scope 'admin', as: 'admin' do
        namespace 'plugins' do
          namespace 'my_plugin' do
            get 'index' => 'admin#index'
          end
        end
      end

    
    end
  end
