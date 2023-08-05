class AddLocationToHospitals < ActiveRecord::Migration[7.0]
  def change
    add_column :hospitals, :location, :string
  end
end
