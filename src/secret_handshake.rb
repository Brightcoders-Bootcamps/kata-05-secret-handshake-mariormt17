class SecretHandshake
    attr_reader :code

    HANDSHAKE_ELEMENTS = {
        1000 => 'jump',
        100 => 'close your eyes',
        10 => 'double blink',
        1 => 'wink',
    }

    def initialize(newDecimal)
        #Convertir el número decimal a base binaria
        numBinary = newDecimal.to_s(2)
        #Obtener el código en base al número ingresado
        @code = makeCode(numBinary.to_i)
        #Si el número en binario es mayor a 10000 invertimos el código
        @code.reverse! if numBinary.to_i > 10000
    end

    private
    def makeCode(numBinary)
        code = []
        numBinary -= 10000 if numBinary > 10000
        HANDSHAKE_ELEMENTS.each_pair{ |key, value|
            if(numBinary/key == 1 && numBinary != 0)
                code << [value]
                numBinary -= key
            end
        }
        code
    end
end

saludo = SecretHandshake.new(17)
print saludo.code
