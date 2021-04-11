Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider:github, "97de6aa2753a1941f55a", "83cb4c4267ca0aace36664e043cbc554488927ad"
  else
    provider:github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end