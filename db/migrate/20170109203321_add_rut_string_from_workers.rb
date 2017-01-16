class AddRutStringFromWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :rut, :string
  end
end
