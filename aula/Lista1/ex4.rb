class Triangulo
    def initialize lado = 13
        @lado = lado
    end
    
    def calcArea
        return @lado * (Math.sqrt(3) / 2)
    end
    
    def calcPerimetro
        return @lado * 3
    end
    
    def getArea
        puts "Área: #{calcArea}"
    end
    
    def getPerimetro
        puts "Perímetro: #{calcPerimetro}"
    end
end

triangulo = Triangulo.new

triangulo.getArea
triangulo.getPerimetro