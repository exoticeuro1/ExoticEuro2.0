class AddCarFkColToImages < ActiveRecord::Migration[8.0]
  def change
    add_reference :images, :car, null: true, foreign_key: true
  end
end
