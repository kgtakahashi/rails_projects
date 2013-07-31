Rails.application.config.middleware.use OmniAuth::Builder do
	configure do |config|
    config.path_prefix = '/auth'
  end
	provider :facebook,"273300026141611","6d2636de9a9a20ef14b944cbc5049eec"
end
