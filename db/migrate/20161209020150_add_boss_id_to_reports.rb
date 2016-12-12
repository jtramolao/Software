class AddBossIdToReports < ActiveRecord::Migration
  def change
    add_reference :reports, :boss, index: true, foreign_key: true
  end
end
