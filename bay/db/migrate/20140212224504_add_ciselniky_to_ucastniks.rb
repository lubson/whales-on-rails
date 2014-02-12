class AddCiselnikyToUcastniks < ActiveRecord::Migration
  def change
    create_table :c_tituls do |t|
      t.integer :poradi
      t.string  :kod,   limit: 6
      t.string  :nazev, limit: 30

      t.timestamps
    end
    add_reference :ucastniks, :c_titul, index: true
    
    create_table :c_rodinny_stavs do |t|
      t.integer :poradi
      t.string  :kod,   limit: 6
      t.string  :nazev, limit: 30

      t.timestamps
    end
    add_reference :ucastniks, :c_rodinny_stav, index: true

    
    create_table :c_povolanis do |t|
      t.integer  :poradi
      t.string   :kod, limit: 6
      t.string   :nazev, limit: 30

      t.timestamps
    end
    add_reference :ucastniks, :c_povolani, index: true
    
    create_table :c_vzdelanis do |t|
      t.integer  :poradi
      t.string   :kod, limit: 6
      t.string   :nazev, limit: 30

      t.timestamps
    end
    add_reference :ucastniks, :c_vzdelani, index: true
  end
end
