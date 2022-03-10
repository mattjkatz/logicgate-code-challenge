def barn_sort(unsorted_data)
  # first sort all of the animals by their "barn" color
  animals_sorted_by_color = {}
  unsorted_data.each do |animal|
    # check to ensure that the item's keys fit into the barn
    if (animal.key?("animal") && animal.key?("barn"))
      # check if the aniaml's colored barn exists yet, if not create it, and then add the animal to it's corresponding barn
      if !animals_sorted_by_color.key?("#{animal["barn"]}")
        animals_sorted_by_color[animal["barn"]] = []
      end
      animals_sorted_by_color[animal["barn"]] << animal["animal"]
    end
  end
  livestock_sorted = []
  # iterate through each color
  animals_sorted_by_color.each do |color|
    # create the appropriate number of barns and add them to the placeholder array placeholder_barn
    placeholder_barn = []
    number_of_barns = (color[1].length / 4.0).ceil
    number_of_barns.times do |index|
      placeholder_barn << {"barn": "Barn_#{color[0]}_#{index + 1}", "animals": []}
    end
    index = 0
    # iterate through each animal (one color at a time), evenly distributing them into placeholder barns
    color[1].each do |animal|
      # each animal gets evenly distributed, moving through all of the barns with a corresponding color
      if index  == number_of_barns
        index = 0
      end
      placeholder_barn[index][:animals] << animal
      index += 1
    end
    # shovel each sorted place holder barn into the final array
    placeholder_barn.each do |barn|
      livestock_sorted << barn
    end
  end
  # return the Ruby output as JSON
  return JSON.generate(livestock_sorted)
end
