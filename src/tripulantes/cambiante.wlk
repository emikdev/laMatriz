import src.tripulantes.liberado.*

class Cambiante inherits Liberado {
    override method caloriasBase(){
        return 2000
    }

    override method caloriasExtra(){
        return 500
    }

    // Implementacion del inciso 3.a
    override method puedeConectarse(){
        return desarraigo < 0.5
    }
}

/*

    // Implementacion propuesta por los docentes

class Cambiante inherits Liberado {
    override method caloriasQueConsume(){
        return 2000 * desarraigo + 500
    }
} 

*/