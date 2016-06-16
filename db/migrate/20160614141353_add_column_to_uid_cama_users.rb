class AddColumnToUidCamaUsers < ActiveRecord::Migration
  def change
  	add_column :cama_users, :uid, :string
  	add_column :cama_users, :oauth_token, :string
  	add_column :cama_users, :oauth_expires_at, :datetime
  end
end
