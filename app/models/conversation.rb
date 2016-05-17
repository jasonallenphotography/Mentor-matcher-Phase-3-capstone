class Conversation < ActiveRecord::Base
  belongs_to :mentor, class_name: 'User'
  belongs_to :mentee, class_name: 'User'

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :mentor_id, :scope => :mentee_id

  scope :between, -> (mentor_id, mentee_id) do
    where("(conversations.mentor_id = ? AND conversations.mentee_id =?) OR (conversations.mentor_id = ? AND conversations.mentee_id =?)", mentor_id, mentee_id, mentee_id, mentor_id)
  end

  def unread_message_for_user(user_id)
  	messages.where(read: false).where('user_id !=? ', user_id)
  end

  def unread_messages?
  	messages.where(read: false) && messages.last.user_id != current_user.id
  end

end
