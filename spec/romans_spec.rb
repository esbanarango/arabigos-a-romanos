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

    context "composite numbers" do

      it 'converts 13 to XIII' do 
        expect(rom.convert(13)).to eq('XIII')
      end

      it 'converts 21 to XXI' do 
        expect(rom.convert(21)).to eq('XXI')
      end

      it 'converts 33 to XXXIII' do 
        expect(rom.convert(33)).to eq('XXXIII')
      end

      it 'converts 330 to CCCXXX' do 
        expect(rom.convert(330)).to eq('CCCXXX')
      end

    end

  end

  context "numbers equals to 4*base (4,40,400..)" do

    it 'converts 4 to IV' do 
      expect(rom.convert(4)).to eq('IV')
    end

    it 'converts 40 to XL' do 
      expect(rom.convert(40)).to eq('XL')
    end

    it 'converts 400 to CD' do 
      expect(rom.convert(400)).to eq('CD')
    end

  end


  context "numbers greater than 5*base and less than 9*base (6,7,8,60,70,80...)" do

    it 'converts 6 to CD' do 
      expect(rom.convert(6)).to eq('VI')
    end

    it 'converts 7 to VII' do 
      expect(rom.convert(7)).to eq('VII')
    end

    it 'converts 8 to VIII' do 
      expect(rom.convert(8)).to eq('VIII')
    end

    it 'converts 60 to LX' do 
      expect(rom.convert(60)).to eq('LX')
    end 

    it 'converts 70 to LXX' do 
      expect(rom.convert(70)).to eq('LXX')
    end 

    it 'converts 80 to LXXX' do 
      expect(rom.convert(80)).to eq('LXXX')
    end 

    it 'converts 600 to DC' do 
      expect(rom.convert(600)).to eq('DC')
    end 

    it 'converts 700 to DCC' do 
      expect(rom.convert(700)).to eq('DCC')
    end 

    it 'converts 800 to DCCC' do 
      expect(rom.convert(800)).to eq('DCCC')
    end 

    context "composite numbers (16,27,66,87...)" do

      it 'converts 16 to XVI' do 
        expect(rom.convert(16)).to eq('XVI')
      end

      it 'converts 27 to XXVII' do 
        expect(rom.convert(27)).to eq('XXVII')
      end

      it 'converts 66 to LXVI' do 
        expect(rom.convert(66)).to eq('LXVI')
      end

      it 'converts 87 to LXXXVII' do 
        expect(rom.convert(87)).to eq('LXXXVII')
      end
      
      it 'converts 667 to DCLXVII' do 
        expect(rom.convert(667)).to eq('DCLXVII')
      end

    end

  end

  context "numbers equals to 9*base (9,90,900)" do

    it 'converts 9 to IX' do 
      expect(rom.convert(9)).to eq('IX')
    end

    it 'converts 90 to XC' do 
      expect(rom.convert(90)).to eq('XC')
    end

    it 'converts 900 to CM' do 
      expect(rom.convert(900)).to eq('CM')
    end

    context "composite numbers (19,99,696,999...)" do

      it 'converts 19 to XIX' do 
        expect(rom.convert(19)).to eq('XIX')
      end

      it 'converts 99 to XCIX' do 
        expect(rom.convert(99)).to eq('XCIX')
      end

      it 'converts 696 to DCXCVI' do 
        expect(rom.convert(696)).to eq('DCXCVI')
      end

      it 'converts 999 to CMXCIX' do 
        expect(rom.convert(999)).to eq('CMXCIX')
      end
      
      it 'converts 3999 to MMMCMXCIX' do 
        expect(rom.convert(3999)).to eq('MMMCMXCIX')
      end

    end

  end


end