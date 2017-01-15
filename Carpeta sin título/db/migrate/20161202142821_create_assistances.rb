class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.references :worker, index: true, foreign_key: true
      t.boolean :asistio
      t.boolean :excepcion
      t.date :fecha
      t.integer :horas

      t.timestamps null: false
    end
  end
end
