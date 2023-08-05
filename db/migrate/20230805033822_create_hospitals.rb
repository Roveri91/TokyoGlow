class CreateHospitals < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :price_range
      t.text :services
      t.text :description
      t.float :average_rating
      t.string :phone_number
      t.string :webpage

      t.timestamps
    end
  end
end
