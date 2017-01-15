class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :nombre
      t.integer :rut
      t.text :direccion
      t.string :telefono
      t.string :email
      t.string :equipo
      t.string :jefe

      t.timestamps null: false
    end
  end
end
