class CreateProductions < ActiveRecord::Migration[6.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.float :budget
      t.string :director
      t.boolean :ongoing
      t.string :image

      t.timestamps
    end
  end
end
