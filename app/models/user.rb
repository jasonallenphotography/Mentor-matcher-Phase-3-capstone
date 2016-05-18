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
      @user.location = auth['info']['location'] ||= ""
      @user.industry = auth['info']['industry'] ||= ""
      @user.picture_url = auth['info']['image']
      @user.public_profile_url = auth['info']['urls']['public_profile']
      # @user.current_title = auth['extra']['raw_info']['firstName']
      # @user.current_company = auth['extra']['raw_info']['firstName']
      return @user if @user.save
    end
  end

  def self.search(search)
    User.joins(:interests).where("first_name || email || last_name || industry || current_company || current_title || mission_statement || location || interests.name LIKE ?", "%#{search}%")

    # Just the interests join table query:
    # User.joins(:interests).where("interest.name LIKE ?", "%#{search}%")
  end


  def unread_conversations_nav_notification
    if self.conversations.any?{ |convo| convo.unread_message_for_user(self.id).length > 0 }
      return 'notification-for-new-message-or-request'
    else
      return ''
    end
  end

  def unread_conversations_button_notification
    if self.conversations.any?{ |convo| convo.unread_message_for_user(self.id).length > 0 }
      return 'warning'
    else
      return ''
    end
  end

  def sorted_conversations
    array = self.conversations.sort_by do |conv|
      if conv.messages.last != nil
        conv.messages.last.created_at
      end
    end

    return array.reverse

  end

  # def unread_conversations?
  #   conversations.any? do |conv|
  #     conv.unread_message_for_user(self.id)
  #   end
  # end

  # def redirect_unless_editing_or_deleting_own(profile_owner)
  #   redirect "/users/#{profile_owner}" unless logged_in? && current_user.id == profile_owner
  # end

end
