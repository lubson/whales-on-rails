class CreateCNarodnosts < ActiveRecord::Migration
  def change
    create_table :c_narodnosts do |t|
      t.integer :poradi
      t.string :kod, limit: 6
      t.string :nazev, limit: 30

      t.timestamps
    end
  end
end
