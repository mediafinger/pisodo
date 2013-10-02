class CreatePisos < ActiveRecord::Migration
  def change
    create_table :pisos do |t|
      t.string :name
      t.string :found
      t.string :url
      t.date :first_noticed
      t.string :area
      t.string :maps
      t.integer :floor
      t.string :status
      t.integer :price
      t.integer :bond
      t.integer :broker_fee
      t.integer :square_meter
      t.boolean :furnished
      t.integer :number_of_bedrooms
      t.integer :size_of_largest_bedroom
      t.boolean :bedroom_to_patio
      t.boolean :suited_to_share
      t.integer :number_of_bathrooms
      t.boolean :bathtub
      t.integer :size_of_living_room
      t.integer :size_of_balcony
      t.boolean :balcony_to_patio
      t.string :type_of_kitchen
      t.boolean :equipped_kitchen
      t.boolean :washing_machine
      t.boolean :dishwasher
      t.string :type_of_street
      t.boolean :quiet
      t.boolean :heating
      t.boolean :air_conditioning
      t.boolean :double_glazing
      t.boolean :sunny
      t.boolean :closets
      t.boolean :wooden_floor
      t.boolean :elevator
      t.boolean :space_for_bike
      t.integer :distance_to_metro
      t.integer :distance_to_work
      t.integer :distance_to_beach
      t.integer :distance_to_park
      t.string :picture_one
      t.string :picture_two
      t.string :contact
      t.string :fon
      t.date :visited
      t.text :comments
      t.timestamps
    end
  end
end
