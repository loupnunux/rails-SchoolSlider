class CreateLearns < ActiveRecord::Migration[5.1]
  def change
    create_table :learns do |t|
      t.text :citation
      t.text :source

      t.timestamps
    end
  end
end
