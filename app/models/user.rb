class User < ActiveRecord::Base
  validates :first_name,
            :last_name,
            :picture_url,
            :public_profile_url,
            :status,
            :email,
            :linkedin_id, presence: true
  validates :linkedin_id, :email, uniqueness: true

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :matches
  has_many :accepted_matches
  has_many :conversations
  has_many :messages
  accepts_nested_attributes_for :user_interests


  def return_opposite_type(current_user)
    if current_user.type == "Mentor"
      User.where(type: "Mentee")
    else
      User.where(type: "Mentor")
    end
  end

#move this to the controller
  def self.find_or_create_from_auth_hash(auth)
    if User.find_by(linkedin_id: auth['uid'])
      User.find_by(linkedin_id: auth['uid'])
    else
      @user = User.new()
      @user.linkedin_id = auth['uid']
      @user.email = auth['info']['email']
      @user.first_name = auth['info']['first_name']
      @user.last_name = auth['info']['last_name']
      @user.location = auth['info']['location']
      @user.industry = auth['info']['industry']
      @user.picture_url = auth['info']['image']
      @user.public_profile_url = auth['info']['urls']['public_profile']
      # @user.current_title = auth['extra']['raw_info']['firstName']
      # @user.current_company = auth['extra']['raw_info']['firstName']
      return @user if @user.save
    end
  end

end
