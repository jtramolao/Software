class CreateEquips < ActiveRecord::Migration
  def change
    create_table :equips do |t|
      t.string :nombre
      t.string :especialidad
      t.references :boss, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
