class AddStatusToAttendants < ActiveRecord::Migration[7.0]
  def change
    add_column :attendants, :status, :string
    add_column :attendants, :integer, :string
  end
end
