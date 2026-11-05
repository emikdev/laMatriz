class Tripulante {
    var property peso

    method caloriasQueConsume(){
        return self.caloriasBase() * self.multiplicadorDeCalorias()
    }

    method comer(){
        peso += (self.caloriasQueConsume() / self.metabolismo()) + self.caloriasExtra()
    }

    method metabolismo(){
        return 10000
    }

    method caloriasBase()
    method multiplicadorDeCalorias()
    method caloriasExtra()

    // Implementacion del inciso 3.a
    method puedeConectarse(){
        return true
    }
}

/*

    // Implementacion propuesta por los docentes

class Tripulante {
    var property peso

    method caloriasQueConsume(){
        return peso * 25
    }

    method comer(){
        peso += self.caloriasQueConsume() / 10000
    }
}

*/