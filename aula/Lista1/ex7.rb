class Porta
    def initialize
        @isOpen = false
        @numAberturas = 0
    end
    def abrir
        unless @isOpen
            puts "A porta abriu-se"
            @isOpen = true
            @numAberturas += 1
            puts "nº de vezes que foi aberta: #{@numAberturas}"
        else
            puts "A porta já está aberta"
        end
    end
    def fechar
        if @isOpen
            puts "A porta fechou-se"
            @isOpen = false
        else
            puts "A porta já está fechada"
        end
    end
end
porta = Porta.new
porta.abrir
porta.abrir
porta.fechar
porta.fechar
porta.abrir