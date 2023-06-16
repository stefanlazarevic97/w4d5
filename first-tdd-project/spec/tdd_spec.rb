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

describe ""