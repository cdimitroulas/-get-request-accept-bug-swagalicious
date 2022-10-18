require "rails_helper"
require "swagalicious"

DEFINITIONS = JSON.parse(File.read(File.expand_path("docs/definitions/arkenstone-internal-definitions.json", __dir__)))

# swagalicious configuration
# https://github.com/ehowe/swagalicious#usage
RSpec.configure do |config|
  config.swagger_root = Rails.root.to_s + "/docs/openapi" # This is the relative path where the swagger docs will be output
  config.swagger_docs = {
    "arkenstone-internal.json" => {
      openapi: "3.0.3",
      basePath: "/internal_api/",
      version: "v1",
      info: {
        title: "Arkenstone Internal API"
      },
      # TODO
      components: {
        schemas: DEFINITIONS.symbolize_keys,
        securitySchemes: {
          apiKey: {
            type: :apiKey,
            name: "authorization",
            in: :header
          }
        }
      }
    }
  }
end
