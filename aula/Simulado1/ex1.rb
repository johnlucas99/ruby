class Semaforo
    def initialize cor
        @cor = cor
    end
    def aviso
        case @cor
            when "vermelho"
                puts "Sinal #{@cor}"
                puts "PARE"
            when "amarelo"
                puts "Sinal #{@cor}"
                puts "CAUTELA"
            when "verde"
                puts "Sinal #{@cor}"
                puts "PROSSIGA..."
            else
                puts "sinal incorreto"
        end
    end
end

semaforo = Semaforo.new("azul")
semaforo.aviso