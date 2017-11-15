class AddSliderbiblicalandlearnToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :slider_biblical, :boolean
    add_column :settings, :slider_learn, :boolean
  end
end
