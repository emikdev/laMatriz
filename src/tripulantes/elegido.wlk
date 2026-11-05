import src.tripulantes.tripulante.*

class Elegido inherits Tripulante {
    override method caloriasQueConsume(){
        return if(peso < 70) 30 else 50
    }

    override method comer(){
        peso += self.caloriasQueConsume() / 50000
    }
}