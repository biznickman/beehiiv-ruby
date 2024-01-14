module Beehiiv
  class Client
    PRODUCTION_URL = 'https://api.beehiiv.com/v2'
    STAGING_URL = 'https://stoplight.io/mocks/beehiiv/v2/104190750'

    attr_accessor :api_key, :base_url

    def initialize(options = {})
      @api_key = options[:api_key]
      @base_url = options[:base_url] || PRODUCTION_URL
    end

    def authorization_header
      "Bearer #{@api_key}"
    end
  end
end