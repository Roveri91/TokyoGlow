class RemoveStatusFromAttendants < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendants, :status, :integer
  end
end
