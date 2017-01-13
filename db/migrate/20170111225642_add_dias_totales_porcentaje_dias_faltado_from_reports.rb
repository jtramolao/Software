class AddDiasTotalesPorcentajeDiasFaltadoFromReports < ActiveRecord::Migration
  def change
    add_column :reports, :diasTotales, :integer
    add_column :reports, :porcentaje, :float
    add_column :reports, :diasFaltados, :integer
    add_column :reports, :excepciones, :integer
    add_column :reports, :horasExtras, :integer
  end
end
