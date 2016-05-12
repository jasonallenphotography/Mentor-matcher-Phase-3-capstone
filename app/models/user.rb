class User < ActiveRecord::Base
  validates :first_name,
            :last_name,
            :picture_url,
            :public_profile_url,
            :type,
            :status, presence: true
  validates :public_profile_url, uniqueness: true

  has_many :interest_users
  has_many :interests, through: :interest_users
  has_many :matches
  has_many :conversations, through: :matches
  has_many :messages

end
