class CreateCalcs < ActiveRecord::Migration[5.1]
  def change
    create_table :calcs do |t|
      t.string :delivery_from
      t.string :delivery_to
      t.integer :cargo_width
      t.integer :cargo_heigth
      t.integer :cargo_depth
      t.integer :value_weight
      t.integer :cost

      t.timestamps
    end
  end
end
