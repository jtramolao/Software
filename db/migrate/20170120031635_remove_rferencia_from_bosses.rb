class RemoveRferenciaFromBosses < ActiveRecord::Migration
  def change
    remove_column :bosses, :user_id, :integer
  end
end
