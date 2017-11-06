class AddSlidermenuToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :slider_menu, :boolean
    add_column :settings, :url_menu, :string
  end
end
