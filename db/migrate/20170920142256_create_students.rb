class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :first_name
      t.string :class_room
      t.date :birth

      t.timestamps
    end
  end
end
