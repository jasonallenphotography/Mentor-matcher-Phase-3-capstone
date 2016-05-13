class Match < ActiveRecord::Base
  validates :initator_id, :receiver_id, :type, presence: true
  # has_one conversation
  belongs_to :initiator, source: :user
  belongs_to :receiver, source: :user

end
