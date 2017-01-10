class RemoveBossidFromReports < ActiveRecord::Migration
  def change
    remove_column :reports, :boss_id, :integer
  end
end
