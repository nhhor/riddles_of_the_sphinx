require("rspec")
require("riddle")

describe '#Riddle' do


  describe('#==') do
    it("is the same album if it has the same attributes as another album") do
      riddle1 = Riddle.new('a', nil, 'yes', 'yes')
      riddle1.riddle()
      riddle2 = Riddle.new('b', nil, 'no', 'no')
      riddle2.riddle()

      riddle3 = Riddle.new('c', nil, 'maybe', 'maybe')
      riddle3.riddle()

      expect(riddle2).to(eq('no'))
    end
  end
end
