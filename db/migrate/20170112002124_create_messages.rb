class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :users, foreign_key: true

      t.timestamps
    end
    add_index :messages, [:id, :created_at]
  end
end
