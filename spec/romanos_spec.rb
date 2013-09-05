require_relative "../romanos.rb"

describe Romanos do

  let(:rom) {Romanos.new}

  context "simbolos basicos" do 

    it 'convierte 1 a I' do 
      expect(rom.convertir(1)).to eq('I')
    end

    it 'convierte 5 a V' do 
      expect(rom.convertir(5)).to eq('V')
    end

    it 'convierte 10 a X' do 
      expect(rom.convertir(10)).to eq('X')
    end

    it 'convierte 50 a L' do 
      expect(rom.convertir(50)).to eq('L')
    end

    it 'convierte 100 a C' do 
      expect(rom.convertir(100)).to eq('C')
    end

    it 'convierte 500 a D' do 
      expect(rom.convertir(500)).to eq('D')
    end

    it 'convierte 1000 a M' do 
      expect(rom.convertir(1000)).to eq('M')
    end

  end



end