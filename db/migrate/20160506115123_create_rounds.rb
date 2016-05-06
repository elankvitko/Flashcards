class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, foreign_key: true
      t.references :deck, foreign_key: true

      t.timestamps null: false
    end
  end
end
