class RemoveJefeFromWorker < ActiveRecord::Migration
  def change
    remove_column :workers, :jefe, :string
  end
end
