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


  def return_opposite_type(current_user)
    if current_user.type == "Mentor"
      User.where(type: "Mentee")
    else
      User.where(type: "Mentor")
    end
  end

  def self.find_or_create_from_auth_hash(auth)

  end

end
