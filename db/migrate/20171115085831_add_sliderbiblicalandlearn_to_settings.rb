class AddSliderbiblicalandlearnToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :slider_biblical, :boolean
    add_column :settings, :slider_learn, :boolean
    add_column :settings, :slider_art, :boolean
  end
end
