class Adivinhacao
    def initialize numEscolhido
        @numEscolhido = numEscolhido
    end
    def sorteio
        @sorteio = rand(100)
    end
    def tentativa
        if @numEscolhido == @sorteio
            puts "Você inseriu o nº #{@numEscolhido}"
            puts "Você acertou o nº sorteado, parabéns!"
        else
            puts "Você inseriu o nº #{@numEscolhido}"
            if @numEscolhido > (@sorteio-10) && @numEscolhido < (@sorteio+10)
                puts "Está próximo"
            end
            puts "Número errado, tente novamente!"
        end
    end
end
adivinhacao = Adivinhacao.new(5)
adivinhacao.sorteio
adivinhacao.tentativa