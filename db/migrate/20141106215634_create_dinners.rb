class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :title
   	  t.string :price
      t.text :ingredients

      t.timestamps
    end
  end
end
