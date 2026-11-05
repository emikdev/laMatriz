class Tripulante {
    var property peso

    method caloriasQueConsume(){
        return peso * 25
    }

    method comer(){
        peso += self.caloriasQueConsume() / 10000
    }
}