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

describe "two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] } 
    it 'should accept an array' do
       expect{ two_sum(array)}.to_not raise_error
    end
    it 'should return an array that contains pair of positions where the elements at those positions sum to zero' do
       expect(two_sum(array)).to eq([[0,4], [2,3]])
    end
end