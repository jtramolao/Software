class CreateSummariesWorkers < ActiveRecord::Migration
  def change
    	create_table :summaries_workers, :id => false do |t|
  		t.references :summary
  		t.references :worker
  end
  add_index :summaries_workers, :summary_id
  add_index :summaries_workers, :worker_id
end
end
