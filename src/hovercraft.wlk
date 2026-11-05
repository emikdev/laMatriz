class Hovercraft {
    var property tripulantes = []
    var property reservasDeProteinas
    var tripulantesConectados = []

    method agregarTripulante(tripulante){
        tripulantes.add(tripulante)
    }

    method comer(){
        self.todosPuedenComer()
        tripulantes.forEach({ tripulante => 
            reservasDeProteinas -= tripulante.caloriasQueConsume()
            tripulante.comer()
        })
    }

    method todosPuedenComer(){
        if(reservasDeProteinas < self.caloriasQueConsumeLaTripulacion()){
            throw new Exception(message = "No hay suficientes reservas para que todos cenen")
        }
    }

    method caloriasQueConsumeLaTripulacion(){
        return tripulantes.sum({tripulante => tripulante.caloriasQueConsume()})
    }

    method abastecer(cantidad){
        reservasDeProteinas += cantidad
    }

    method conectar(tripulante){
        self.puedeConectarse(tripulante)
        tripulantesConectados.add(tripulante)
    }

    method puedeConectarse(tripulante){
        self.perteneceAlHovercraft(tripulante)
        self.noEstaConectado(tripulante)
        self.quedaAlguienQueManeje()
        self.tripulanteAptoParaConectarse(tripulante)
    }
    
    method perteneceAlHovercraft(tripulante){
        if(!tripulantes.contains(tripulante)){
            throw new Exception(message = "El tripulante no pertenece a la tripulacion de esta Hovercraft")
        }
    }

    method noEstaConectado(tripulante){
        if(self.estaConectado(tripulante)){
            throw new Exception(message = "El tripulante ya esta conectado")
        }
    }

    method quedaAlguienQueManeje(){
        if(self.tripulantesDesconectados().size() < 0){
            throw new Exception(message = "Debe quedar alguien que maneje el Hovercraft")
        }
    }

    // Implementacion del inciso 3.a
    method tripulanteAptoParaConectarse(tripulante){
        if(tripulante.puedeConectarse()){
            throw new Exception(message = "El tripulante no esta en condiciones de conectarse")
        }
    }

    method desconectar(tripulante){
        self.yaEstaConectado(tripulante)
        tripulantesConectados.remove(tripulante)
    }

    method yaEstaConectado(tripulante) {
        if(!self.estaConectado(tripulante)){
            throw new Exception(message = "El tripulante no esta conectado")
        }
    }

    method estaConectado(tripulante){
        return tripulantesConectados.contains(tripulante)
    }

    method tripulantesConectados(){
        return tripulantesConectados
    }

    method tripulantesDesconectados(){
        return tripulantes.filter({tripulante => !self.estaConectado(tripulante)})
    }

    // Implementacion del inciso 3.b
    method tripulanteMasPesado(){
        return tripulantes.max({tripulante => tripulante.peso()})
    }

    // Implementacion del inciso 3.b
    method cantidadDeConectados(){
        return tripulantesConectados.size()
    }

    // Implementacion del inciso 3.b
    method cantidadDeTripulantes(){
        return tripulantes.size()
    }

/*
    // Implementacion del inciso 3.b en caso de que pueda haber hovercraft sin tripulantes
    method tieneTripulantes(){
        return !tripulantes.isEmpty()
    }
*/

}

/*

    // Implementacion propuesta por los docentes

class Hovercraft {
    var property tripulantes = []
    var property reservasProteinas
    var conectados = []

    method agregarTripulante(tripulante){
        tripulantes.add(tripulante)
    }

    method comer(){
        tripulantes.forEach({ tripulante => 
            if(reservasProteinas < tripulante.caloriasQueConsume()){
                throw new Exception(message = "No hay suficientes")
            }
            reservasProteinas -= tripulante.caloriasQueConsume()
            tripulante.comer()
        })
    }

    method abastecer(cantidad){
        reservasProteinas += cantidad
    }

    method conectar(tripulante){
        if(!tripulantes.contains(tripulante)){
            throw new Exception(message = "El tripulante no pertenece")
        }
        if(self.estaConectado(tripulante)){
            throw new Exception(message = "Ya esta conectado")
        }
        if(self.tripulantesDesconectados().size() < 0){
            throw new Exception(message = "Debe quedar alguien")
        }
        conectados.add(tripulante)
    }

    method desconectar(tripulante){
        if(!self.estaConectado(tripulante)){
            throw new Exception(message = "No esta conectado")
        }
    }

    method estaConectado(tripulante){
        return conectados.contains(tripulante)
    }

    method tripulantesConectados(){
        return conectados
    }

    method tripulantesDesconectados(){
        return tripulantes.filter({tripulante => !self.estaConectado(tripulante)})
    }

}

*/