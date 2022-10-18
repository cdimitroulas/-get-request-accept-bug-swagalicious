require 'swagger_helper'

RSpec.describe 'Test API', type: :doc, swagger_doc: 'test.json' do
  path '/test' do
    get 'returns a string' do
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Success' do
        schema type: :string
        validate_schema!
      end
    end
  end
end
