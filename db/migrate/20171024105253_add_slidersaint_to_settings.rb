class AddSlidersaintToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :slider_saint, :boolean

    setting = Setting.where(:site_name => 'SchoolSlider').first
    setting.slider_saint = true
    setting.save
  end
end
