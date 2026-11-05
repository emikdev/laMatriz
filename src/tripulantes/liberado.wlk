import src.tripulantes.tripulante.*

class Liberado inherits Tripulante {
    var property desarraigo

    override method comer(){
        peso += self.caloriasQueConsume() / 10000
        desarraigo = (desarraigo - 0.01).max(0.2)
    }
}