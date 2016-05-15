class Interest < ActiveRecord::Base
  has_many :user_interests
  has_many :users, through: :user_interests

  fuzzily_searchable :name

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
