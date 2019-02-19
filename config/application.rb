require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTutorialApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end

Rails.application.configure do
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :test
  host = 'localhost:3000' # ここをコピペすると失敗します。自分の環境に合わせてください。
  config.action_mailer.default_url_options = { host: host, protocol: 'http' }
end