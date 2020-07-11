class AddAceitoToManuals < ActiveRecord::Migration[6.0]
  def change
    add_column :manuals, :aceito, :boolean, default: false
  end
end
