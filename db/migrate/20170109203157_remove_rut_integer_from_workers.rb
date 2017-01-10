class RemoveRutIntegerFromWorkers < ActiveRecord::Migration
  def change
    remove_column :workers, :rut, :integer
  end
end
