import src.tripulantes.tripulante.*

class Liberado inherits Tripulante {
    var property desarraigo

    override method caloriasBase(){
        return 3000
    }

    override method multiplicadorDeCalorias(){
        return desarraigo
    }

    override method caloriasExtra(){
        return 0
    }

    override method comer(){
        super()
        desarraigo = (desarraigo - 0.01).max(0.2)
    }
}

/*

    // Implementacion propuesta por los docentes

class Liberado inherits Tripulante {
    var property desarraigo

    override method comer(){
        peso += self.caloriasQueConsume() / 10000
        desarraigo = (desarraigo - 0.01).max(0.2)
    }
}

*/