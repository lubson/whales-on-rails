class CreateUcastniks < ActiveRecord::Migration
  def change
    create_table :ucastniks do |t|
      t.string :jmeno, limit: 20
      t.string :prijmeni, limit: 35
      t.datetime :narozen
      t.integer :pohlavi

      t.timestamps
    end
  end
end
