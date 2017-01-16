class AddWorkerIdToReport < ActiveRecord::Migration
  def change
    add_reference :reports, :worker, index: true, foreign_key: true
  end
end
