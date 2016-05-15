class Mentee < User
  has_many :accepted_mentors, through: :accepted_matches, source: 'Mentor'
  has_many :conversations
end
