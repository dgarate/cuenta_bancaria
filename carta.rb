class Carta
    attr_accessor :numero, :pinta 
    def initialize(numero, pinta)

    if !(1..13).include?(numero)
        raise  ArgumentError, 'CONSTRUCTOR: El numero no esta entre 1 y 13'
    end

    if !['C','D','E','T'].include?(pinta)
        raise  ArgumentError, 'CONSTRUCTOR: la pinta no es no es C, D , E, T '
    end
        @numero = numero
        @pinta = pinta 
    end 

    def numero=(numero)
        if !(1..13).include?(numero)
            raise  ArgumentError, 'SETTER: El numero no esta entre 1 y 13'
        end
        @numero = numero
    end

    def pinta=(pinta)
        if !['C','D','E','T'].include?(pinta)
        raise  ArgumentError, 'SETTER: la pinta no es no es C, D , E, T '
        @pinta = pinta 
        end
    end

    def self.numero
        Random.rand(1..13)
    end
    
    def self.pinta
        ['C','D','E','T'].sample
    end
end

array = []

5.times  do
    numero1 = Carta.numero
    pinta1 = Carta.pinta
    array.push Carta.new(numero1, pinta1)
end 

puts array.inspect

c2 = Carta.new(10, 'D')

puts c2.inspect

c2.numero = 4
c2.pinta = 'G'

puts c2.inspect 