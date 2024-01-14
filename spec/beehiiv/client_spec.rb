require "beehiiv/client"

RSpec.describe Beehiiv::Client do
  describe "#initialize" do
    it "sets the api_key" do
      client = Beehiiv::Client.new(api_key: "test_key")
      expect(client.api_key).to eq("test_key")
    end

    it "sets the base_url to the production url by default" do
      client = Beehiiv::Client.new(api_key: "test_key")
      expect(client.base_url).to eq(Beehiiv::Client::PRODUCTION_URL)
    end

    it "allows setting the base_url to a different value" do
      client = Beehiiv::Client.new(api_key: "test_key", base_url: "http://example.com")
      expect(client.base_url).to eq("http://example.com")
    end
  end

  describe "#authorization_header" do
    it "returns the correct authorization header" do
      client = Beehiiv::Client.new(api_key: "test_key")
      expect(client.authorization_header).to eq("Bearer test_key")
    end
  end
end