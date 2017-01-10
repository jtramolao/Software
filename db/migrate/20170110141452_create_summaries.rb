class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.date :fecha
      t.integer :resumen
      t.integer :worker_id

      t.timestamps null: false
    end
  end
end
