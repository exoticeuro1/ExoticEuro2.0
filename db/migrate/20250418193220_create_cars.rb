class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.decimal :price
      t.integer :miles
      t.string :car_make
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
