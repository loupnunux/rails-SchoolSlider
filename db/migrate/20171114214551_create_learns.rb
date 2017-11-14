class CreateLearns < ActiveRecord::Migration[5.1]
  def change
    create_table :learns do |t|
      t.text :quote
      t.integer :author_id

      t.timestamps
    end
  end
end
