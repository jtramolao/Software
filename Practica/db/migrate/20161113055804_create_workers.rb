class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :nombre
      t.string :rut
      t.text :direccion
      t.integer :edad

      t.timestamps null: false
    end
  end
end
