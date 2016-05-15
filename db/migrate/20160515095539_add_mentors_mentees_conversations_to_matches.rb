class AddMentorsMenteesConversationsToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :mentee, null: false
    add_reference :matches, :mentor, null: false
    add_reference :matches, :conversation
  end
end
