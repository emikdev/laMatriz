import src.tripulantes.tripulante.*

class Nativo inherits Tripulante {

    override method caloriasBase(){
        return peso
    }

    override method multiplicadorDeCalorias(){
        return 25
    }

    override method caloriasExtra(){
        return 0
    }
}

/*

    // Implementacion propuesta por los docentes

class Nativo inherits Tripulante {
    
}

*/