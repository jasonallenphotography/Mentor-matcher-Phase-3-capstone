class Mentor < User
  has_many :accepted_mentees, through: :accepted_matches, source: 'Mentee'
  has_many :conversations
end
