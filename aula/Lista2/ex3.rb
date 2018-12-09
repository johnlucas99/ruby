class Bateria
    def initialize carga
        @carga = carga
    end
    def descarregar
        @carga -= 10
    end
    def carregar
        @carga += 5
    end
end
class Celular
    def initialize num, nome_usuario, bateria, nome
        @num = num
        @nome_usuario = nome_usuario
        @bateria = bateria
        @nome = nome
        @ligado = false
    end
end