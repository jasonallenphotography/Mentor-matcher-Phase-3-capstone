class User < ActiveRecord::Base
  validates :first_name,
            :last_name,
            :picture_url,
            :public_profile_url,
            :type,
            :status,
            :linkedin_id, presence: true
  validates :linkedin_id, uniqueness: true

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
    if User.find_by(linkedin_id: auth['uid'])
      @user = User.find_by(linkedin_id: auth['uid'])
    else
      @user = User.new()
      @user.first_name = auth['info']['first_name']
      @user.last_name = auth['info']['last_name']
      @user.location = auth['info']['location']
      @user.industry = auth['info']['industry']
      @user.picture_url = auth['info']['image']
      @user.public_profile_url = auth['info']['public_profile']
      # @user.current_title = auth['extra']['raw_info']['firstName']
      # @user.current_company = auth['extra']['raw_info']['firstName']
      if @user.save
        redirect_to users_path
      else
        redirect_to '/auth/linkedin'
      end
    end
  end

end
