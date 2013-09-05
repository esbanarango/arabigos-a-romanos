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

  context "numbers less than 4*base (1,2,3,20,30,200...)" do

    it 'converts 2 to II' do 
      expect(rom.convert(2)).to eq('II')
    end

    it 'converts 3 to III' do 
      expect(rom.convert(3)).to eq('III')
    end

    it 'converts 20 to XX' do 
      expect(rom.convert(20)).to eq('XX')
    end

    it 'converts 30 to XXX' do 
      expect(rom.convert(30)).to eq('XXX')
    end 

    it 'converts 300 to CCC' do 
      expect(rom.convert(300)).to eq('CCC')
    end 

  end



end