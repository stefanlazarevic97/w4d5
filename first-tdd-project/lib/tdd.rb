def my_uniq(array)
    uniq = []
    array.each { |ele| uniq << ele unless uniq.include?(ele) }
    uniq
end

def two_sum(array)
    pairs = []
    array.each_with_index do |el1, i|
        array.each_with_index { |el2, j| pairs << [i, j] if el1 + el2 == 0 and i < j }
    end
    pairs
end

def my_transpose(array)
    rows = array.length
    cols = array[0].length
    transposed = Array.new(cols) { [] }

    rows.times do |i|
        cols.times { |j| transposed[j] << array[i][j] }
    end

    transposed
end

def stock_picker(arr)
    days = []
    max = 0
    arr.each_with_index do |el1, i|
        arr.each_with_index do |el2, j|
            if el2 - el1 > max && j > i
                days = [i, j]
                max = el2 - el1
            end
        end
    end
    days
end

