class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :fecha
      t.integer :bonos
      t.integer :descuentos
      t.string :resumen

      t.timestamps null: false
    end
  end
end
