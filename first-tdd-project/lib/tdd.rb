def my_uniq(array)
    uniq = []
    array.each { |ele| uniq << ele unless uniq.include?(ele) }
    uniq
end

def two_sum(arr)
    pairs = []
    arr.each_with_index do |el1, i|
        arr.each_with_index do |el2, j|
            pairs << [i, j] if el1 + el2 == 0 and i < j
        end
    end
    pairs
end
