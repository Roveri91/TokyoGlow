class AddStatustoAttendants < ActiveRecord::Migration[7.0]
  def change
    add_column :attendants, :status, :integer, default: 0
  end
end
