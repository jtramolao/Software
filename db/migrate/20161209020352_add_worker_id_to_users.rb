class AddWorkerIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :worker, index: true, foreign_key: true
  end
end
