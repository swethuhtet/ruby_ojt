def array_fun()
    puts "How many numbers of array?"
    arrayNum = gets.chomp.to_i
    animal_array = Array.new(arrayNum)
    animal_array.each_with_index{|val,index|
        puts "##{index+1} Animal name :"
        animalName = gets.chomp
        animal_array[index] = animalName
    }
    sortedArray = animal_array.sort
    uniqArray = sortedArray.uniq
    revArray = uniqArray.reverse
    print uniqArray.length()
    print "\n"
    print revArray
end
array_fun()