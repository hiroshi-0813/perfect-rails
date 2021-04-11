Rails.application.config.middleware.use

OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "YOUR_CLIENT_ID", "YOUR_CLIENT_SECRET"
  else
    provider :github,
      Rails.applicaiton.credentials.github[:client_id],
      Rails.applicaiton.credentials.github[:client_secret]
  end
end