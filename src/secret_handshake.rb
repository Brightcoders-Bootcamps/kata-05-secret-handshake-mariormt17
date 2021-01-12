# frozen_string_literal: true

# Clase para obtener el saludo secreto dependiendo de un numero binario
class SecretHandshake
  attr_reader :code

  HANDSHAKE_ELEMENTS = {
    1000 => 'jump',
    100 => 'close your eyes',
    10 => 'double blink',
    1 => 'wink'
  }.freeze

  def initialize(new_decimal)
    # Convertir el numero decimal a base binaria
    num_binary = new_decimal.to_s(2)
    # Obtener el codigo en base al numero ingresado
    @code = make_code(num_binary.to_i)
    # Si el numero en binario es mayor a 10000 invertimos el codigo
    @code.reverse! if num_binary.to_i > 10_000
  end

  private

  def make_code(num_binary)
    code = []
    num_binary -= 10_000 if num_binary > 10_000
    HANDSHAKE_ELEMENTS.each_pair do |key, value|
      if num_binary / key == 1 && num_binary != 0
        code << value
        num_binary -= key
      end
    end
    code.reverse!
  end
end
