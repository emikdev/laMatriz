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
        return tripulantes.filter({tripulante => self.estaConectado(tripulante)})
    }

}