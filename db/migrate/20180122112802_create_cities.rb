class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :title
      t.belongs_to :zone

      t.timestamps
    end
  end
end
