class AddDescuentosToReports < ActiveRecord::Migration
  def change
    add_column :reports, :descuentos, :integer
  end
end
