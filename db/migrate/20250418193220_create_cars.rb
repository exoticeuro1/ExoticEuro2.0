class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.decimal :price
      t.decimal :compared_price
      t.integer :miles
      t.integer :year
      t.integer :display_image
      t.string :car_make
      t.text :description
      t.string :link
      t.string :featured, default: false

      t.timestamps
    end
  end
end
