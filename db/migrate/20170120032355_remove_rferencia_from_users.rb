class RemoveRferenciaFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :worker_id, :integer
  end
end
