class CreateImages < ActiveRecord::Migration[8.0]
  def change
    create_table :images do |t|
      t.string :name
      t.text :url

      t.timestamps
    end
  end
end
