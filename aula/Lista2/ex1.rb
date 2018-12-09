class Partido
    def initialize nome, ideologia, sigla, numero
        @nome = nome
        @ideologia = ideologia
        @sigla = sigla
        @numero = numero
    end
    def mostrarDados
        puts "Nome do partido: #{@nome}"
        puts "Ideologia do partido: #{@ideologia}"
        puts "Sigla: #{@sigla}"
        puts "Número: #{@numero}"
    end
end
class Candidato
    def initialize nome, partido
        @nome = nome
        @partido = partido
    end
    def exibir
        puts "Nome do candidato: #{@nome}"
        @partido.mostrarDados
    end
end
partido1 = Partido.new("Partido 1","Ideologia 1",:P1,"1")
partido2 = Partido.new("Partido 2","Ideologia 2",:P2,"2")
candidato1 = Candidato.new("Candidato 1",partido1)
candidato2 = Candidato.new("Candidato 2", partido2)
candidato1.exibir
candidato2.exibir