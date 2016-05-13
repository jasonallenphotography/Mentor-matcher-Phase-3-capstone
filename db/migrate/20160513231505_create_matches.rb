class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :initiator_id, null: false
      t.integer :receiver_id, null: false
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end
