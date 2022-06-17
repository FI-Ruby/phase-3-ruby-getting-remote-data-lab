require 'net/http'
require 'open-uri'
require 'json'

URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
class GetRequester 
    attr_accessor :url
    def initialize url
        @url = url
    end
    def get_response_body 
        response = URI.parse(@url)
        resp = Net::HTTP.get_response(response)
        resp.body
    end

    def parse_json 
        JSON.parse(get_response_body)
    end

end