class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.float :height
      t.float :weight
      t.date :birth_date
      t.integer :number
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
