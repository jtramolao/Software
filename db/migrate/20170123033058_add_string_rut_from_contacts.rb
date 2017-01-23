class AddStringRutFromContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :rut, :string
  end
end
