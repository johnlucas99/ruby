class Pessoa
    def initialize sexo, idade, nome, vegetariana
        @sexo = sexo
        @idade = idade
        @nome = nome
        @vegetariana = vegetariana
    end
    def nome
        @nome
    end
    def idade
        @idade
    end
    def vegetariana
        @vegetariana
    end
end

class Churrasco
    def initialize qtdCarne
        @qtdCarne = qtdCarne
    end
    def qtdCarne
        @qtdCarne
    end
    def verificarConsumo pessoa
        unless pessoa.idade < 0
            if pessoa.idade <= 3 || pessoa.vegetariana
                puts "#{pessoa.nome} não consome carne"
            else
                if pessoa.idade > 3 && pessoa.idade <= 12
                    puts "#{pessoa.nome} consome 1kg de carne"
                    @qtdCarne -= 1
                    puts "Ainda há #{qtdCarne} de carne restante"
                else
                    puts "#{pessoa.nome} consome 2kg de carne"
                    @qtdCarne -= 2
                    puts "Ainda há #{qtdCarne} de carne restante"
                end
            end
        else
            puts "Idade inválida..."
        end
    end
end
Dante = Pessoa.new("Masculino", 12, "Dante", false)
Vergil = Pessoa.new("Masculino", 13, "Vergil", false)
Beatrice = Pessoa.new("Feminino", 14, "Beatrice", true)

Churras = Churrasco.new(13)

puts "Você possui #{Churras.qtdCarne} de carne"
puts "Pessoas de 0 a 3 anos e vegetarianos não consomem carne"
puts "Pessoas de 4 a 12 anos consomem 1kg de carne"
puts "Pessoas de 13 anos acima consomem 2kg de carne"

Churras.verificarConsumo(Dante)
Churras.verificarConsumo(Vergil)
Churras.verificarConsumo(Beatrice)