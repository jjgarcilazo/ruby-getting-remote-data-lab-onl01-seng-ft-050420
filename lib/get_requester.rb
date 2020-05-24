require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
 def initialize(url)
  @url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
end


programs = GetRequester.new.get_response_body
puts programs
