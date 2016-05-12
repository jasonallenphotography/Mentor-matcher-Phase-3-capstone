class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :location
      t.string :industry
      t.string :picture_url, null: false
      t.string :public_profile_url, null: false, unique: true
      t.string :current_title
      t.string :current_company
      t.string :type, null: false
      t.string :status, null: false, default: "available"
      t.string :mission_statement

      t.timestamps null: false
    end
  end
end
