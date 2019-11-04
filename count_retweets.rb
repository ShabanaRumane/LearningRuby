require 'rubygems'
require 'rest-client'
require 'crack'
puts "here1"
URL = "http://ruby.bastardsbook.com/files/tweet-fetcher/tweets-data/USAGov-tweets-page-2.xml"
response = RestClient.get(URL)   
xml = Crack::XML.parse(response.body)

statuses = xml["statuses"].select{|status| status["retweet_count"].to_i > 10}

puts "There are #{statuses.length} statuses that have more than 10 retweets"
statuses.each do |status_el|
   puts status_el["text"]
   puts status_el["created_at"]
   puts "--- \n"
end