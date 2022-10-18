require "rails_helper"
require "swagalicious"

# swagalicious configuration
# https://github.com/ehowe/swagalicious#usage
RSpec.configure do |config|
  config.swagger_root = Rails.root.to_s + '/docs/openapi'
  config.swagger_docs = {
    'test.json' => {
      openapi: '3.0.3',
      version: 'v1',
      info: {
        title: 'Test API'
      }
    }
  }
end
