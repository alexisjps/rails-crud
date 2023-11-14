class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :speciliaty

      t.timestamps
    end
  end
end
