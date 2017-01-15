class RemoveDescuentosResumenAsistenciaFromReports < ActiveRecord::Migration
  def change
    remove_column :reports, :assistance_id, :integer
  end
end
