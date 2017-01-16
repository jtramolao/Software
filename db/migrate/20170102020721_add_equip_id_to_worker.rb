class AddEquipIdToWorker < ActiveRecord::Migration
  def change
    add_reference :workers, :equip, index: true, foreign_key: true
  end
end
