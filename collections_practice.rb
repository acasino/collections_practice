#return an array sorted in ascending order
def sort_array_asc(array)
    array.sort
end

#eturn an array sorted in descending order
def sort_array_desc(array)
    array.sort {|x,y| -(x <=> y)}
end

#return an array in ascending order sorted by the number of characters in the string
def sort_array_char_count(array)
    array.sort_by { |string| string.length}
end

#swap the second and third elements of an array 
def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
    #could also use 'swap_elements_from_to(["a", "b", "c"],0,2) #=> ["c", "b", "a"]''
end

#reverse the order of an array of integers
def reverse_array(array)
    array.reverse
end

#taking an array as an input, change the 3rd character of each element to a dollar sign.
def kesha_maker(array)
    new_array = []
    array.each {|word| new_array << word[2] = "$"}
end

#find all words that begin with "a" in the following array
def find_a(array)
    array.select { |word| word.start_with?("a")}
end

#sum all the numbers in the following array
def sum_array(array)
    array.inject {|sum,x| sum + x }
    #alternatively without inject:
    #   sum = 0
    #   array.each { |num| sum += num }  ##iterate through sum adding each time
end

#Add an "s" to each word in the array except for the 2nd element in the array
def add_s(array)
    array.map do |word|
        if word == "feet"
            word
        else
        word + "s" #if word != "feet"
        end
    end
end