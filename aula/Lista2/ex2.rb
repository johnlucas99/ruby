class Cliente
    def initialize nome, saldo, limite
        @nome = nome
        @saldo = saldo
        @limite = limite
    end
    def sacar val
        if (@saldo + @limite) > val
            @saldo -= val
        else
            puts "Não há saldo suficiente"
        end
    end
    def depositar val
        @saldo += val
    end
    def nome
        @nome
    end
    def saldo
        @saldo
    end
    def limite
        @limite
    end
    def checarSaldo
        puts "Nome: #{@nome}"
        puts "Seu saldo: #{@saldo}"
        puts "O limite: #{@limite}"
    end
end
class Doc
    def initialize c1, c2, quantia
        @c1 = c1
        @c2 = c2
        @quantia = quantia
    end
    def transferir
        @c1.sacar(@quantia)
        @c2.depositar(@quantia)
    end
    def quantia
        @quantia
    end
end
C1 = Cliente.new("Nelson",300,500)
C2 = Cliente.new("Ulisses",300,200)
D = Doc.new(C1,C2,300)
C1.checarSaldo
C2.checarSaldo
D.transferir
C1.checarSaldo
C2.checarSaldo