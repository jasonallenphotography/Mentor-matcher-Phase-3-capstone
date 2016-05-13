class LinkedinController < ApplicationController
  # before_filter :authenticate_user!

  @@config = {
    site: 'https://api.linkedin.com',
    authorize_path: '/uas/oauth/authenticate',
    request_token_path: '/uas/oauth/requestToken?scope=r_basicprofile',
    access_token_path: '/uas/oauth/accessToken'
  }

  def linkedin_profile
    @basic_profile = get_basic_profile
    @current_position = get_position
  end

  def oauth_account
    client = LinkedIn::Client.new('77gircg58feacx', 'RK4LciZBygRURCGP', @@config)
    pin = params[:oauth_verifier]
    if pin
      atoken, asecret = client.authorize_from_request(session[:rtoken], session[:rsecret], pin)
      LinkedinOauthSetting.create!(:asecret => asecret, :atoken => atoken, :user_id => current_user.id)
    end
    redirect_to "/"
  end

  def generate_linkedin_oauth_url
    if LinkedinOauthSetting.find_by_user_id(current_user.id).nil?
      client = LinkedIn::Client.new('77gircg58feacx', 'RK4LciZBygRURCGP', @@config)
      request_token = client.request_token(:oauth_callback => "http://#{request.host}:#{request.port}/oauth_account")
      session[:rtoken] = request_token.token
      session[:rsecret] = request_token.secret
      redirect_to request_token.authorize_url
    else
      redirect_to "/oauth_account"
    end
  end

  private

  def get_client
    linkedin_oauth_setting = LinkedinOauthSetting.find_by_user_id(current_user.id)
    client = LinkedIn::Client.new('77gircg58feacx', 'RK4LciZBygRURCGP', @@config)
    client.authorize_from_access(linkedin_oauth_setting.atoken, linkedin_oauth_setting.asecret)
    client
  end


  def get_basic_profile
    bprofile = BasicProfile.find_by_user_id(current_user.id)
    if bprofile.nil?
      client = get_client
      profile = client.profile(fields: ["first-name", "last-name", :location, :industry, "picture-url", "public-profile-url"])

      basic_profile = profile.to_hash
      basic_profile[:location] = basic_profile["location"]["name"]
      new_basic_profile = BasicProfile.new(basic_profile)
      new_basic_profile.save
      new_basic_profile.user = current_user
      new_basic_profile
    else
      bprofile
    end
  end

end
