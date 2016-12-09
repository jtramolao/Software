class AddBossIdToWorkers < ActiveRecord::Migration
  def change
    add_reference :workers, :boss, index: true, foreign_key: true
  end
end
