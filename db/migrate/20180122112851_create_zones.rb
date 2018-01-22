class CreateZones < ActiveRecord::Migration[5.1]
  def change
    create_table :zones do |t|
      t.integer :number
      t.integer :cost

      t.timestamps
    end
  end
end
