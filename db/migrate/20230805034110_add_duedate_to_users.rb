class AddDuedateToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :due_date, :date
  end
end
