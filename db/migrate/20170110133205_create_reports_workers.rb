class CreateReportsWorkers < ActiveRecord::Migration
  def change
    create_table :reports_workers, :id => false do |t|
    	t.references :report
    	t.references :worker
    end
    add_index :reports_workers, :report_id
    add_index :reports_workers, :worker_id
  end
end
