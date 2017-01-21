class AddResumenToReports < ActiveRecord::Migration
  def change
    add_column :reports, :resumen, :string
  end
end
