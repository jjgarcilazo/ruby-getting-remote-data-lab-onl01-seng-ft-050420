require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def program_school
# we use the JSON library to parse the API response into nicely formatted JSON
  programs = JSON.parse(self.get_programs)
  programs.collect do |program|
    program["agency"]
  end
end 
programs = GetPrograms.new.get_programs
puts programs
