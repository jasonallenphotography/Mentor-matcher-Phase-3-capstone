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
      t.string :type
      t.string :status, default: "available"
      t.string :mission_statement
      t.string :linkedin_id, null: false, unique: true

      t.timestamps null: false
    end
  end
end
