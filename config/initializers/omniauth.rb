OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "77gircg58feacx", "RK4LciZBygRURCGP",
  :scope => 'r_basicprofile r_emailaddress',

  :fields => ["id",
              "email-address",
              "first-name",
              "last-name",
              "industry",
              "picture-url",
              "public-profile-url",
              "location"]
end

#does this go in this file?
# LinkedIn.configure do |config|
#   config.token = "77gircg58feacx"
#   config.secret = "RK4LciZBygRURCGP"
# end
