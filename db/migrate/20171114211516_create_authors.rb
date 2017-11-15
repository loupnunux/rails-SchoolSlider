class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :birth
      t.string :death

      t.timestamps
    end

  end
end
