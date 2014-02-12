class AddCNarodnostRefToUcastnik < ActiveRecord::Migration
  def change
    add_reference :ucastniks, :c_narodnost, index: true
  end
end
