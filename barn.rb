def barn_sort(unsorted_data)
  animals_sorted_by_color = {}
  unsorted_data.each do |animal|
    # create a color key for each color to sort the animals. first check if color key exists
    if animal.key?("animal") && animal.key?("barn")
      barn_color_exists = false
      if animals_sorted_by_color.key?(animal["barn"])
        barn_color_exists = true
      end
      # if there is no corresponding color key yet, create it
      if !barn_color_exists
        animals_sorted_by_color[animal["barn"]] = []
      end
      # add animals to the array value of the corresponding color key
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
    # iterate through each animal (one color at a time), evenly distributing them into the barns in placeholder_barn
    color[1].each do |animal|
      if index  == number_of_barns
        index = 0
      end
      placeholder_barn[index][:animals] << animal
      index += 1
    end
    placeholder_barn.each do |barn|
      livestock_sorted << barn
    end
  end
  return JSON.pretty_generate(livestock_sorted)
end
