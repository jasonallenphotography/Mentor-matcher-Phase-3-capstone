class Match < ActiveRecord::Base
  validates :initator_id, :receiver_id, :type, presence: true
end
