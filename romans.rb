
# * El sistema romano, utiliza los siguientes siete símbolos para la representación (I, V, X, L, C, D y M) 
#   y que independientemente de donde estén colocadas las cifras tienen el mismo valor.
# * Los símbolos se escriben y leen de izquierda a derecha, de mayor a menor valor.
# * Si a la derecha de una cifra romana de escribe otra igual o menor, el valor de ésta se suma a la anterior.
# * Si un símbolo está a la izquierda inmediata de otro de mayor valor, se resta al valor del segundo el valor del primero.
# * Se permiten a lo sumo tres repeticiones consecutivas del mismo símbolos I, X y C.
# * No se permite la repetición de una misma símbolos V, L y D. (Muchos relojes el uso de IIII para el numeral 4, en lugar del correcto IV.)
# * La cifra I colocada delante de la V o la X, les resta una unidad.
# * La cifra X, precediendo a la L o a la C, les resta diez unidades.
# * La cifra C, delante de la D o la M, les resta cien unidades.

class Romans

  SYMBOLS = {1 => 'I',5 => 'V', 10 => 'X', 50 => 'L',100=>'C', 500 => 'D', 1000=>'M' }

  def initialize
  end

  def convert num
    return SYMBOLS[num] if SYMBOLS.has_key?(num)
    process num
  end

  private

  def process num
    num = num.to_s
    base = 10**(num.length-1)
    roman_number = ''
    num.chars.each_with_index do |c,i|
      dig = get_first_digit(c.to_i*base)
      case 
      when dig < 4
        roman_number += SYMBOLS[base]*dig
      when dig == 4
        roman_number += SYMBOLS[base] + SYMBOLS[base*5]
      when dig.between?(6,8)
        roman_number += SYMBOLS[base*5] + SYMBOLS[base]*(dig-5)
      when dig == 9
        roman_number += SYMBOLS[base] + SYMBOLS[base*10]        
      else
        roman_number = 'dont know how to convert that number'
      end
      base = base/10
    end
    roman_number
  end

  def get_first_digit num
    num.to_s[0].to_i
  end

end