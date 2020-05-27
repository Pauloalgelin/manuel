class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.text :tipo
      t.text :marca
      t.text :codigo
      t.text :modelo
      t.text :path

      t.timestamps
    end
  end
end
