class CreateSaints < ActiveRecord::Migration[5.1]
  def change
    create_table :saints do |t|
      t.date :day
      t.string :name

      t.timestamps
    end
  end
end
