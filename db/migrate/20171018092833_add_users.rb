class AddUsers < ActiveRecord::Migration[5.1]
  def change
    User.create :username => 'admin', :email => 'admin@admin.fr', :password => 'slider', :password_confirmation => 'slider'
  end
end
