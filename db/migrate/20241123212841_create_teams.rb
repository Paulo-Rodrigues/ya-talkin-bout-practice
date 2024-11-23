class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :conference
      t.string :abbreviation
      t.string :division
      t.string :championships

      t.timestamps
    end
  end
end
