# call the data from the JSON file into a variable as a Ruby hash

require "json"
require_relative "barn"

file = File.read("animals.json")
data = JSON.parse(file)

begin
  livestock = data["livestock"]
  puts JSON.pretty_generate(barn_sort(livestock))
rescue
  p "ERROR: JSON is not properly formatted."
end
