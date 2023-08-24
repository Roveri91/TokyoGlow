class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.integer :user_from_id
      t.integer :user_to_id
      t.string :title
      t.timestamps
    end
  end
end
