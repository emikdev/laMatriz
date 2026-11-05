Inciso 1: Verdadero o falso.

    a - Falso, no esta bien aprovechada la herencia en los tripulantes para implementar su alimentacion ya que se repita logica/codigo en los metodos caloriasQueConsume() y comer() de las subclases de Tripulante.

    b - Falso, la clase Nativo no es abstracta.

    c - Falso, no es necesaria la clase Tripulante para que la nave trate a cualquier tipo de tripulante polimorficamnete, solo es necesario que todas las clases de tripulante entiendan los mensajes que la nave necesite enviarles: caloriasQueConsume() y comer(); mas adelante vah a necesitar que entiendan desarraigo().

    d - Falso, la solucion no hace un buen manejo de excepciones ya que en el metodo comer() de la clase Hovercraft si la excepcion corta no se resuelve lo pedido en los requerimientos: "Esta cantidad debe ser suficiente para toda la tripulacion cada vez que deban cenar", "Cuidado! Si la comida no alcanza, entonces no se puede cenar.", es decir, la excepcion deberia saltar antes de comensar a alimentar a los tripulantes. En la solucion planteada si la comida no es suficiente a la mitad de la lista de tripulantes el resultado no es el deseado por la mitad de los tripulantes ya cenaron y la otra mitad no.

Inciso 2: Plantear una solucion mejorada (Se resolvio dentro de src/).

Inciso 3: Estender el programa para incorporar los requerimientos solicitados (Se resolvio dentro de src/).

Inciso 4: Dada la informacion (disponible en el enunciado)

    a - Dibujar el diagrama dinamico de Logo y sus Tripulantes.

    b - Escribir los test's (Se resolvio dentro de test/).
