require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.generators do |g|
      g.test_framework :rspec,
      fixtures: false,
      # テストデータベースにレコードを作成するファイルの作成をスキップする
      view_specs: false,
      # ビュースペックを作成しないことを指定する
      helper_specs: false,
      # ヘルパーファイル用のスペックを作成しないことを指定する
      routing_spacs: false
      # config/routes.rb用のスペックファイルの作成を省略する
    end
  end
end
