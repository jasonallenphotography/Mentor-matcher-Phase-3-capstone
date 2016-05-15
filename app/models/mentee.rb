class Mentee < User
  has_many :accepted_mentors, through: :accepted_matches, source: 'Mentor'
  has_many :conversations
  has_many :matches
  has_many :pending_matches
  has_many :accepted_matches
  has_many :closed_matches
  has_many :blocked_matches
end
