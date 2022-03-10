def barn_sort(input)
  initial_color_sort = {}
  input.each do |animal|
    # create a color key for each color to sort the animals. first check if color key exists
    barn_color_exists = false
    if initial_color_sort.key?(animal["barn"]) == true
      barn_color_exists = true
    end
    # if there is no corresponding color key yet, create it
    if barn_color_exists == false
      initial_color_sort[animal["barn"]] = []
    end
    # add animals to the array value of the corresponding color key
    initial_color_sort[animal["barn"]] << animal["animal"]
  end
  
  livestock_sorted = []
  # iterate through each color
  initial_color_sort.each do |color|
    # create the appropriate number of barns and add them to the placeholder array color_distribute
    color_distribute = []
    number_of_barns = (color[1].length / 4.0).ceil
    number_of_barns.times do |index|
      color_distribute << {"barn": "Barn_#{color[0]}_#{index + 1}", "animals": []}
    end
    index = 0
    # iterate through each animal (one color at a time), evenly distributing them into the barns in color_distribute
    color[1].each_with_index do |animal|
      if index  == number_of_barns
        index = 0
      end
      color_distribute[index][:animals] << animal
      index += 1
    end
    color_distribute.each do |barn|
      livestock_sorted << barn
    end
  end
  return livestock_sorted
end
