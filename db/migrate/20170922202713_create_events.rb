class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :comment
      t.date :day
      t.boolean :allday
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
