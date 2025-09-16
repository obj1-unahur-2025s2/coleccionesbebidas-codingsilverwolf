/*
Coleccion > lista -> hay un orden (índice). []

Coleccion > conjunto -> no se repiten los elementos (como en los conjuntos). #{}

Por lo general contienen elementos del mismo tipo: polimórficos.Así entienden el mismo mensaje.

Para las colecciones usaremos const porque la referencia no cambia.

const fila = []

manejar la documentación es parte de nuestro quehacer. Tener la pestaña siempre abierta.
*/

object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}

object whisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}

object licuado{
  //no me interesa la fruta, sólo el nutriente
  const nutrientes = []
  method agregar(unIngrediente){
    nutrientes.add(unIngrediente.nutrientes())
  }
  // Si medimos en cm3 deberíamos dividir por 1000 la cantidad. Así la cantidad viene en litros.
  method rendimiento(cantidad){
    return nutrientes.sum()*cantidad/1000
  }
  
}

object aguaSaborizada {
  var saborizante = terere
  method saborizar (unaBebida){
    saborizante = unaBebida
    
  } 
  method rendimiento(cantidad){
    return 1+ saborizante.rendimiento(cantidad/4)
  }
}


object coctel {
  const ingredientes =[]
  
  method agregar(unIngrediente) {
    ingredientes.add(unIngrediente)
  }
  method rendimiento(cantidad) {
    var rendimientoTotal = 1
    ingredientes.forEach({bebida => rendimientoTotal *=bebida.rendimiento(cantidad/ingredientes.size())})
    return producto
  }
  
// Clase lunes 15
// mensajes.filter({i=> i.size() >3}) me devuelve otra lista filtrada. Lo guarda en memoria. 


/*
Ejemplos con fold

const palabras =['Hola', 'como', 'estas']

palabras.first().size()
palabras.get(1)

palabras.fold(0, {acum, item => acum + item.size()}) 

Tambien funciona si tenemos un conjunto

word = #{'Hola', 'como', 'estas, como}


word.fold(0, {acum, item => acum + item.size()}) 
method rendimiento(cantidad){
  return ingredientes.fold(1, {
    rendimientoTotal, i => rendimientoTotal * i.rendimiento(cantidad/ingredientes.size())
  })
}

Si tengo como elementos 14 naves espaciales y las quiero mover, hago forEach. Trato de usar forEach para enviar el mismo mensaje a cada elemento. "No proceso"
*/
  
}
// tengo dudas sobre la legibilidad del código. ¿Hubiese sido menor definir cantidadDeIngredientes?


object manzana {
  method nutrientes () {
    return 4
  }
}

object mandarina {
  method nutrientes () {
    return 5
  }
}