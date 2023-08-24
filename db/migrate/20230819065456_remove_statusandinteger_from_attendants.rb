class RemoveStatusandintegerFromAttendants < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendants, :status, :string
    remove_column :attendants, :integer, :string
  end
end
