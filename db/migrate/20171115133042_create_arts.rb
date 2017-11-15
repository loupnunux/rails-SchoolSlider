class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :titre
      t.integer :author_id
      t.string :typeart

      t.timestamps
    end
  end
end
