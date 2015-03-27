require 'net/http'
require '/home/acubenchik/ruby/suggest/model/request_processor'
require 'json'
class RequestCannon
  #make city as param
  URL = "http://api.goeuro.com/api/v2/position/suggest/en/Kiev"
  def bang
    resp = Net::HTTP.get_response(URI.parse(URL))
    # Add erro handling here
    data = JSON.parse(resp.body)
    RequestProcessor.new.process_request(data)
  end
end

endpointWorker = RequestCannon.new
endpointWorker.bang