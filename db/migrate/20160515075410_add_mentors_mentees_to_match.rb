class AddMentorsMenteesToMatch < ActiveRecord::Migration
  def change
    add_reference :matches, :mentee, :string, null: false
    add_reference :matches, :mentor, :string, null: false
  end
end
