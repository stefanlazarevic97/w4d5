def my_uniq(array)
    uniq = []
    array.each { |ele| uniq << ele unless uniq.include?(ele) }
    uniq
end

p my_uniq( [9, 3, 5, 5, 2, 1, 7, 3] )