# call the data from the JSON file into a variable as a Ruby hash

require "json"
require_relative "barn"

file = File.read("animals.json")
data = JSON.parse(file)
livestock = data["livestock"]

pp barn_sort(livestock)