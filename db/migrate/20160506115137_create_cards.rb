class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :answer, null: false
      t.string :question, null: false
      t.references :deck, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
