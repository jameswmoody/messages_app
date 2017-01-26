class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :name
    remove_column :users, :user_id
  end
end
