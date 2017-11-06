class AddFullWelcomeToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :full_welcome, :boolean
  end
end
