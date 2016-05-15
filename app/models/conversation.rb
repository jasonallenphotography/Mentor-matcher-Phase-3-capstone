class Conversation < ActiveRecord::Base
  belongs_to :mentor, class_name: 'User'
  belongs_to :mentee, class_name: 'User'

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :mentor_id, :scope => :mentee_id

  scope :between, -> (mentor_id, mentee_id) do
    where("(conversations.mentor_id = ? AND conversations.mentee_id =?) OR (conversations.mentor_id = ? AND conversations.mentee_id =?)", mentor_id, mentee_id, mentee_id, mentor_id)
  end

  # def penpal_of(current_user)
  #   if current_user.type == "Mentor"
  #     "mentee"
  #   else
  #     "mentor"
  #   end
  # end

end
