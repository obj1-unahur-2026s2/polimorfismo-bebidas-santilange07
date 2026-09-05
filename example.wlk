object pepe{
  var edad = 30
  var peso = 80
  var ultimaBebida = terere
  var ultimaDosis = 10
  method cumplirAnios(){
    edad += 1
  }
  method velocidad(){
    return ultimaBebida.rendimiento(self,ultimaDosis) * 490/self.peso() -
    if(edad>30) 10 else 0

 
  }
  method consumir(cantidad,bebida){
    ultimaBebida = bebida
    ultimaDosis = cantidad
  }
  method peso(){
    return peso
  }

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }
}

object tito{
  var peso = 70
  var ultimaBebida = terere
  var ultimaDosis = 10
  
  method velocidad(){
    return ultimaBebida.rendimiento(self,ultimaDosis) * 490/self.peso()
 
  }
  method consumir(cantidad,bebida){
    ultimaBebida = bebida
    ultimaDosis = cantidad
  }
  method peso(){
    return peso
  }

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }

  method esFeliz(){
    return  self.velocidad() >= 7
  }
}

object whisky{
  method rendimiento(persona,dosis){
    return 0.9**dosis
  }
}

object terere{
  method rendimiento(deportista,dosis){
    return 0.1*dosis.max(1)
  }
}

object cianuro{
  method rendimiento(deportista,dosis){
    return if(deportista.peso()>70) deportista.peso()*0.01 + dosis else 0
  }
}