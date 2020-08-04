class CuentaBancaria 
    attr_accessor :nombre_usuario 
    def initialize(nombre_usuario, numero_cuenta, vip=0)
        
        if numero_cuenta.to_i.digits.count != 8
            raise  RangeError, 'CONSTRUCTOR: la cuenta no tiene 8 digitos'
        end   
        
        if !(0..1).include?(vip)
            raise  ArgumentError, 'CONSTRUCTOR: el digito de cta VIP debe ser 0 0 1'
        end
                
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
    end 

    def numero_cuenta 
         "#{@vip}-#{@numero_cuenta}"
    end
end

c1 = CuentaBancaria.new('deivis',12345678,1)

puts c1.inspect
puts c1.numero_cuenta