module Teste
    def teste
        puts "Teste..."
    end
    def Teste.metodo_estatico
        puts "Metodo Estatico"
    end
end

class Foo
    #O include ira misturar os metodos de 
    #Teste
    include Teste
end

Teste.metodo_estatico
foo = Foo.new
foo.teste