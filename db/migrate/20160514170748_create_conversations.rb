class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :mentor
      t.references :mentee

      t.timestamps null: false
    end
  end
end
