class RemoveRutIntegerFromBosses < ActiveRecord::Migration
  def change
    remove_column :bosses, :rut, :integer
  end
end
