class TableSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :site_name
      t.text :slider_message
      t.integer :slider_interval
      t.boolean :slider_birthday
      t.boolean :slider_event

      t.timestamps
    end
    Setting.create :site_name => 'SchoolSlider', :slider_message => 'Bienvenue à l\'école', :slider_interval => '2', :slider_birthday => true, :slider_event => true
  end
end
