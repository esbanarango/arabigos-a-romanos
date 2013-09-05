require_relative "../romans.rb"

describe Romans do

  let(:rom) {Romans.new}

  context "basic symbols" do 

    it 'converts 1 to I' do 
      expect(rom.convert(1)).to eq('I')
    end

    it 'converts 5 to V' do 
      expect(rom.convert(5)).to eq('V')
    end

    it 'converts 10 to X' do 
      expect(rom.convert(10)).to eq('X')
    end

    it 'converts 50 to L' do 
      expect(rom.convert(50)).to eq('L')
    end

    it 'converts 100 to C' do 
      expect(rom.convert(100)).to eq('C')
    end

    it 'converts 500 to D' do 
      expect(rom.convert(500)).to eq('D')
    end

    it 'converts 1000 to M' do 
      expect(rom.convert(1000)).to eq('M')
    end

  end



end