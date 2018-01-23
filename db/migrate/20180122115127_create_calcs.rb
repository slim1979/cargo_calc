class CreateCalcs < ActiveRecord::Migration[5.1]
  def change
    create_table :calcs do |t|
      t.integer :delivery_from_id
      t.integer :delivery_to_id
      t.integer :cargo_width
      t.integer :cargo_height
      t.integer :cargo_depth
      t.float :value_weight
      t.float :cost

      t.timestamps
    end
  end
end
