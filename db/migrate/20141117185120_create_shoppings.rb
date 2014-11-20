class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.string :title
      t.integer :price
      t.string :person

      t.timestamps
    end
  end
end
