class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end

    def assign_num(numero)
        (numero < 14 && numero > 0) ? (@numero = numero) : (raise 'el numero debe estar entre 1 y 13')
    end

    def assign_pinta(pinta)
        (["C", "D", "E", "T"].include?(pinta)) ? (@pinta = pinta) : (raise "la pinta debe ser 'C', 'D', 'E' o 'T'")
    end

end

c = []
p = ["C", "D", "E", "T"]

5.times do |carta|
    c << Carta.new(rand(1..13),p.sample)
end

print c