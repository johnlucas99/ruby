class Time
    def initialize nome
        @nome = nome
        @jogadores = []
    end
    def atribuir jogador
        case jogador
            when Jogador
                @jogadores << jogador
            else
                puts "ERRO"
        end
    end
    def listar
        puts "Time: #{@nome}"
        for jogador in @jogadores
            jogador.mostrarDados
        end
    end
end

class Jogador
    def initialize nome, num, salario, time
        @nome = nome
        @num = num
        @salario = salario
        @time = time
    end
    def aumento porcentagem
        @salario += (porcentagem / @salario)
    end
    def mostrarDados
        puts "Nome do Jogador: #{@nome}"
        puts "Nº da camisa: #{@num}"
        puts "Salário: #{@salario}"
    end
end
t = Time.new("Brazuca")
j1 = Jogador.new("Allejo",11,15000,t)
j2 = Jogador.new("Pilé",10,150000,t)
t.atribuir(j1)
t.atribuir(j2)
j1.aumento(15)
t.listar