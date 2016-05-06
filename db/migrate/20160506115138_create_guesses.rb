class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :attempt, null: false
      t.references :round, foreign_key: true, index: true
      t.references :card, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
