require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json
