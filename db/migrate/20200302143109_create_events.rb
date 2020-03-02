class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :restaurant_name
      t.string :restaurant_address
      t.integer :restaurant_price_range
      t.string :event_name
      t.text :description
      t.datetime :date
      t.references :user, foreign_key: true
      t.integer :spots

      t.timestamps
    end
  end
end
