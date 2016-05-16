class Match < ActiveRecord::Base
  validates :initiator_id, :receiver_id, :type, presence: true
  validates_uniqueness_of :initiator_id, :scope => :receiver_id, :message => ": This match already exists! View your Requests page."
  # validates_uniqueness_of :mentor_id, :scope => :mentee_id

  has_one :conversation
  belongs_to :initiator, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :mentor
  belongs_to :mentee

end
