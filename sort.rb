# call the data from the JSON file into a variable as a Ruby hash
require "json"
require_relative "barn"

file = File.read("animals.json")
data = JSON.parse(file)
# pull out the data that we need into a variable that we can perform a method on
livestock = data["livestock"]

begin
  # perform our sorting method on our data, "puts" so that we are able to view it in the terminal
  puts barn_sort(livestock)
rescue
  p "ERROR: JSON is not properly formatted."
end
