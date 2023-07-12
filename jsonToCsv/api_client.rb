require 'net/http'
require 'json'

class ApiClient
  def fetch_data(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end

