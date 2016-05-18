class UsersController < ApplicationController

  def index
    @users = return_opposite_type(current_user)
  end


  def new
    @user = User.new()
  end


  def create
    @user = User.new()
    if @user.save
      redirect_to users_path
    # else
      # @errors = @user.errors.full_messages
      # render 'new'
    end
  end


  def show
    @user = User.find(params[:id])
    @interests = Interest.all
    if request.xhr?
      render partial: 'interest_option_form', locals: {interests: @interests, user: @user}, layout: false
    end
  end


  def edit
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)
  end


  def update
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)

    @user.assign_attributes(user_params)
    # binding.pry

    if @user.save
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)

    @user.destroy
    redirect '/users'
  end

layout "finish"
  def finish

    render 'finish'
  end

  def initialize_new_user
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)

    @user.assign_attributes(user_params)

      # creates welcome bot Accepted Match
        @user.type == "Mentor" ? @bot = User.find(1) : @bot = User.find(2)

        @match = AcceptedMatch.new(receiver: @user, initiator: @bot )

        if @user.type == "Mentor"
          @match.mentor_id = @user.id
          @match.mentee_id = @bot.id
        else
          @match.mentor_id = @bot.id
          @match.mentee_id = @user.id
        end


    if @user.save && @match.save
        # Creates conversation and initial message between Bot and new user
        # for new users to avoid empty inbox bug

        @convo = Conversation.find_or_create_by(mentor: @match.mentor, mentee: @match.mentee)
        @match.conversation_id = @convo.id
        Message.create(body: "Welcome to Mentorship, where mentors and people seeking mentorship connect!\n
                          Make sure to complete your profile and add your professional interests to get noticed more quickly.\n
                          I hope that you enjoy our site, and please email support@mentoship-app.com if you have any questions or concerns!
                          With love from the internet,\n
                          Welcome Bot",
                    conversation_id: @convo.id,
                    user_id: @bot.id,
                    read: false)

      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :location,
                                 :industry,
                                 :picture_url,
                                 :public_profile_url,
                                 :current_title,
                                 :current_company,
                                 :type,
                                 :status,
                                 :mission_statement,
                                 :user_interests)
  end

end
