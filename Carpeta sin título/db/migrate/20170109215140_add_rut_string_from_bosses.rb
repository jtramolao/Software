class AddRutStringFromBosses < ActiveRecord::Migration
  def change
    add_column :bosses, :rut, :string
  end
end
