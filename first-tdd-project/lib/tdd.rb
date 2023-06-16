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

class TowersOfHanoi
    def initialize(discs)
        @piles = [(1..discs).to_a.reverse, [], []]
    end

    attr_reader :piles

    def move
        begin
            puts "Please enter a start pin and an end pin separated by a space:"
            move = gets.chomp.split
            from = move.first.to_i
            to = move.last.to_i
            raise "There are only 3 pins available." unless (0..2).include?(from) && (0..2).include?(to)

            if @piles[to].empty? || @piles[from].last < @piles[to].last
                @piles[to] << @piles[from].pop
            else
                raise "You can only put a smaller disc on top of a larger disc."
            end
        rescue => exception
            puts exception
            retry
        end 
    end

    def won?
        @piles[0].empty? && @piles[1].empty?
    end

    def print_board
        @piles.each { |row| p row }
    end

    def play
        i = 0

        until won?
            self.print_board
            self.move
            i += 1
        end
        
        puts "You won in #{i} moves!"
    end
end

