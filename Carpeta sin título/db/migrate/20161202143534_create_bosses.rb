class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      t.string :nombre
      t.integer :rut
      t.string :telefono
      t.string :direccion
      t.string :mail

      t.timestamps null: false
    end
  end
end
