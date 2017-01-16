class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.integer :rut
      t.integer :fono
      t.string :email
      t.text :comentario

      t.timestamps null: false
    end
  end
end
