require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Coworkspace
  class Application < Rails::Application
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.generators do |generate|
          generate.assets false
          generate.helper false
          generate.test_framework  :test_unit, fixture: false
        end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

# 21/01/2020
# HEADS UP! i18n 1.1 changed fallbacks to exclude default locale.
# But that may break your application.

# If you are upgrading your Rails application from an older version of Rails:

# Please check your Rails app for 'config.i18n.fallbacks = true'.
# If you're using I18n (>= 1.1.0) and Rails (< 5.2.2), this should be
# 'config.i18n.fallbacks = [I18n.default_locale]'.
# If not, fallbacks will be broken in your app by I18n 1.1.x.

# If you are starting a NEW Rails application, you can ignore this notice.

# For more info see:
# https://github.com/svenfuchs/i18n/releases/tag/v1.1.0
