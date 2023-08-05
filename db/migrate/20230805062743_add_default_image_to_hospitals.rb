class AddDefaultImageToHospitals < ActiveRecord::Migration[7.0]
  def change
    add_column :hospitals, :default_image, :string
  end
end
