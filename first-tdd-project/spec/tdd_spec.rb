require 'tdd'
require 'rspec'

describe "my_uniq" do
    let(:array) { [9, 3, 5, 5, 2, 1, 7, 3] } 
    let(:array2) {[-1, -1, 9, 1100, 1100, 0, 0]}

    it 'should accept an array' do
        expect { my_uniq(array) }.to_not raise_error
    end

    it 'should return an array with no duplicate elements' do 
        expect(my_uniq(array)).to eq( [9, 3, 5, 2, 1, 7] )
        expect(my_uniq(array2)).to eq([-1, 9, 1100,0])
    end
end

describe 'two_sum' do
    let(:array) { [-1, 0, 2, -2, 1] } 

    it 'should accept an array' do
       expect{ two_sum(array)}.to_not raise_error
    end
    it 'should return an array that contains pair of positions where the elements at those positions sum to zero' do
       expect(two_sum(array)).to eq([[0,4], [2,3]])
    end
end

describe 'my_transpose' do
    let(:rows) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    let(:cols) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }

    it 'should accept an array' do
       expect{ my_transpose(rows)}.to_not raise_error
    end

    it 'should return a transposed version of the original matrix' do
        expect(my_transpose(rows)).to eq(cols)
    end

    it 'should not use Array#transpose built-in method' do
        expect(rows).not_to receive(:transpose)
        my_transpose(rows)
    end

end

describe 'stock_picker' do
let(:array){[1, 2, 3, 4, 5, 6]}
let(:array2){[100000, 4503, 10733, 98989]}
let(:array3){[3700, 88764, 342224, 900]}

    it 'should accept an array' do
        expect{stock_picker(array)}.to_not raise_error
    end

    it 'should return a pair of numbers with the biggest difference' do
        expect(stock_picker(array)).to eq([0, 5])
        expect(stock_picker(array2)).to eq([1, 3])
        expect(stock_picker(array3)).to eq([0, 2])
    end
end

describe 'TowersOfHanoi' do
    subject(:toh){TowersOfHanoi.new(4)}
    describe '#initialize' do
        
    end
end