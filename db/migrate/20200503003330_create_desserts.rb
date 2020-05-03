class CreateDesserts < ActiveRecord::Migration[6.0]
  def change
    create_table :desserts do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.string :url

      t.timestamps
    end
  end
end
