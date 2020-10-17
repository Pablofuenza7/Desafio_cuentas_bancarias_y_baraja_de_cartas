require_relative "carta"

class Baraja
    attr_accessor :cartas

    def initialize
        nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        pinta = ["C", "D", "E", "T"]
        @cartas = nums.map{|num| pinta.map{|pinta| Carta.new(num, pinta)}.flatten}
    end

    def barajar
        self.cartas.shuffle!
    end

    def sacar
        self.cartas.shift
    end

    def repartir_mano
        arr = []
        5.times do
            arr.push(sacar)
        end
        arr
    end


end