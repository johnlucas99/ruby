class Lampada
    def initialize estado = false, limite
        @estado = estado
        @limite = limite
        @gatilho = 0
    end
    def checarEstado
        unless @gatilho > @limite
            if @estado
                puts "A lâmpada está ligada"
            else
                puts "A lâmpada está desligada"
            end
        else
            puts "A lâmpada está quebrada"
        end
    end
    def ligarDesligar
        unless @gatilho > @limite
            if @estado
                @estado = false
                puts "A lâmpada desligou"
                @gatilho += 1
            else
                @estado = true
                puts "A lâmpada ligou"
                @gatilho += 1
            end
        end
    end
end
lampada = Lampada.new(5)
lampada.ligarDesligar
lampada.checarEstado
lampada.ligarDesligar
lampada.checarEstado
lampada.ligarDesligar
lampada.checarEstado
lampada.ligarDesligar
lampada.checarEstado
lampada.ligarDesligar
lampada.checarEstado
lampada.ligarDesligar
lampada.checarEstado
