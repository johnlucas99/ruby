class Ecommerce
    def initialize produto
        @produto = []
    end
end
class Produto
    def initialize preco, qtd
        @preco = preco
        @qtd = qtd
    end
    def vender
        if @qtd >= 1
            puts "Produto vendido"
            @qtd -= 1
        end
    end
end