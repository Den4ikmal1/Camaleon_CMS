Rails.application.routes.draw do

    scope PluginRoutes.system_info["relative_url_root"] do
      scope '(:locale)', locale: /#{PluginRoutes.all_locales}/, :defaults => {  } do
        # frontend
        namespace :plugins do
          namespace 'my_plugin' do
            get 'index' => 'front#index'
            match 'auth/:provider/callback', via: [:get, :post], to: 'sessions#create'
            match 'auth/failure', via: [:get, :post], to: redirect('/')
            match 'signout', via: [:get, :post], to: 'sessions#destroy', as: 'signout'
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

      # main routes
      #scope 'my_plugin', module: 'plugins/my_plugin/', as: 'my_plugin' do
      #  Here my routes for main routes
      #end
    end
  end
