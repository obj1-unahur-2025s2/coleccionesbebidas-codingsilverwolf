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
    var producto = 1
    ingredientes.forEach({bebida => producto = producto*bebida.rendimiento(cantidad/ingredientes.size())})
    return producto
  }
  
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