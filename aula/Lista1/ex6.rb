class Eq2Grau
    def initialize a, b, c
        @a = a
        @b = b
        @c = c
    end
    def delta
        @delta = (@b^2) - (4 * @a * @c)
    end
    def raiz1
        unless @delta <= 0
            @raiz = (-@b * @delta ^ ( 1 / 2 ) ) / 2 * @a
        else
            puts "NaN"
        end
    end
    def raiz2
        unless @delta <= 0
            @raiz = ( -@b * ( -@delta ) ^ ( 1 / 2 ) ) / 2 * @a
        end
    end
end
equacao = Eq2Grau.new(-7,3,13)
equacao.delta
puts equacao.raiz1
puts equacao.raiz2