class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.integer :bed_room
      t.integer :bath_room
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :is_tv
      t.boolean :is_kitchen
      t.boolean :is_dishwasher
      t.boolean :is_air_conditioning
      t.boolean :is_heating
      t.boolean :is_internet
      t.boolean :is_washing_machine
      t.boolean :is_dryer
      t.boolean :is_toiletries_provided
      t.boolean :is_parking
      t.boolean :is_doorman
      t.boolean :is_elevator
      t.integer :price
      t.boolean :active
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
