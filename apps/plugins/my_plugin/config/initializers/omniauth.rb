OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '209367729419838', "e5ace28577c2b9ef2ecb336bd188d0de"
end