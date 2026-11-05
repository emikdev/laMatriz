import src.tripulantes.tripulante.*

class Elegido inherits Tripulante {
    override method caloriasQueConsume(){
        return if(peso < 70) 30 else 50
    }

    override method caloriasBase(){
        return 0
    }

    override method multiplicadorDeCalorias(){
        return 0
    }

    override method caloriasExtra(){
        return 0
    }

    override method metabolismo(){
        return 50000
    }
}

/*

    // Implementacion propuesta por los docentes

class Elegido inherits Tripulante {
    override method caloriasQueConsume(){
        return if(peso < 70) 30 else 50
    }

    override method comer(){
        peso += self.caloriasQueConsume() / 50000
    }
}

*/