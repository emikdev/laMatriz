// Implementacion del inciso 3.b
object zino {
    const flotaDeHovercraft = []

    method agregarHovercraftALaFlota(hovercraft){
        flotaDeHovercraft.add(hovercraft)
    }

    method tripulantesMasPesadosDeLaFlota(){ // Asumiendo que no puede haber un hovercraft sin tripulantes
        return flotaDeHovercraft.map({hovercraft => hovercraft.tripulanteMasPesado()})
    }

/*
    // Si puede haber hovercraft sin tripulantes se emplearia este metodo
    method tripulantesMasPesadosDeLaFlota(){
        return self.hovercraftsConTripulantesDeLaFlota().map({hovercraft => hovercraft.tripulanteMasPesado()})
    }

    method hovercraftsConTripulantesDeLaFlota(){
        return flotaDeHovercraft.filter({hovercraft => hovercraft.tieneTripulantes()})
    }
*/

    method caloriasQueConsumeLaFlota(){
        return flotaDeHovercraft.sum({hovercraft => hovercraft.caloriasQueConsumeLaTripulacion()})
    }

    method hovercraftConMasConectados(){
        return flotaDeHovercraft.max({hovercraft => hovercraft.cantidadDeConectados()})
    }

    method hovercraftConAlMenos(cantidadDeTripulantes){
        return flotaDeHovercraft.findOrElse(
        {hovercraft => hovercraft.cantidadDeTripulantes() >= cantidadDeTripulantes},
        {throw new Exception(message = "No hay ningun hovercraft con al menos " + cantidadDeTripulantes.toString() + " tripulantes")}
    )
    }


}