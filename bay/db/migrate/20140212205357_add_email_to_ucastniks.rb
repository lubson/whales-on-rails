class AddEmailToUcastniks < ActiveRecord::Migration
  def change
    add_column :ucastniks, :email, :string, limit: 40
    add_column :ucastniks, :telefon, :string, limit: 20
    add_column :ucastniks, :posledni_navsteva, :datetime
  end
end
