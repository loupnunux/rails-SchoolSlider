class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.string :name
      t.text :comment
      t.date :start
      t.date :end
      t.boolean :welcome
      t.boolean :saint

      t.timestamps
    end
  end
end
