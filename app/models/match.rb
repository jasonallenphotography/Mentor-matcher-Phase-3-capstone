class Match < ActiveRecord::Base
  validates :initator_id, :receiver_id, :type, presence: true
  # has_one conversation
  belongs_to :initiator, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
