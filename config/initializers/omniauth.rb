OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "77gircg58feacx", "RK4LciZBygRURCGP",
  :scope => 'r_basicprofile r_emailaddress',

  :fields => ["id",
              "email-address",
              "first-name",
              "last-name",
              "industry",
              # "picture-url",
              "picture-urls::(original)",
              "public-profile-url",
              "location"]
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
#does this go in this file?
# LinkedIn.configure do |config|
#   config.token = "77gircg58feacx"
#   config.secret = "RK4LciZBygRURCGP"
# end
