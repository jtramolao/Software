class RemoveEquipoFromWorker < ActiveRecord::Migration
  def change
    remove_column :workers, :equipo, :string
  end
end
