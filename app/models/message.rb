class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user


  validates_presence_of :body, :conversation_id, :user_id

  def message_time
    created_at.getlocal.strftime("%m/%d/%y at %l:%M %p")
  end

  def read_message?
    self.read = true && current_user != self.user_id
  end

end
