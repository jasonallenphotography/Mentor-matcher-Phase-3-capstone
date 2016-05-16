class Match < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with MyValidator
  
  validates :initiator_id, :receiver_id, :type, presence: true
  # validates_uniqueness_of :initiator_id, :scope => :receiver_id
  # validates_uniqueness_of :mentor_id, :scope => :mentee_id

  has_one :conversation
  belongs_to :initiator, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :mentor
  belongs_to :mentee

end
#
# class MyValidator < ActiveModel::Validator
#   def mentor_initiator_uniqueness(match)
#     if match = Match.find_by(initiator_id: initiator_id, receiver_id: receiver_id)
#       match.errors[:initiator_id] << 'This match already exists! View your Requests page.'
#     end
#   end
# end
