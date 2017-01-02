class RemoveBossIdFromWorker < ActiveRecord::Migration
  def change
    remove_column :workers, :boss_id, :integer
  end
end
