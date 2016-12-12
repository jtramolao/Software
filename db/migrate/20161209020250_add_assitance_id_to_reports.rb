class AddAssitanceIdToReports < ActiveRecord::Migration
  def change
    add_reference :reports, :assistance, index: true, foreign_key: true
  end
end
