class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.text :notes
      t.string :purpose
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :hospital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
