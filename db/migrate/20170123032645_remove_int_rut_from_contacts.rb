class RemoveIntRutFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :rut, :integer
  end
end
