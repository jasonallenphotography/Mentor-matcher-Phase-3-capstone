class Mentor < User
  has_many :accepted_mentees, through: :accepted_matches, source: 'Mentee'
  has_many :conversations
  has_many :matches
  has_many :pending_matches
  has_many :accepted_matches
  has_many :closed_matches
  has_many :blocked_matches
end
