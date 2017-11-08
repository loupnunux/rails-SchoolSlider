class AddMeteoToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :slider_meteo, :boolean
    add_column :settings, :meteo_code, :text

    setting = Setting.where(:id => 1).first
      setting.meteo_code = 'https://www.tameteo.com/wimages/fotoe70ac24f4bea391fc153490b1c72d566.png'
    setting.save
  end
end
