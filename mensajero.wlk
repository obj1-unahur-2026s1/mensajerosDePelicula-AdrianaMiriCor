import vehiculo.*






object paquete {
  var estaPago = false
  method puedeSerEntregado(mensajero, destino) = mensajero.PuedeLlevarPaquete(destino) and self.estaPago()
  method estaPago()= estaPago
  method serPagado(){estaPago = true }
}

//mensajero
object roberto {
  var vehiculo = bicicleta
  method peso () = self.pesoPropio() + vehiculo.peso()
  method cambiarTransporte(transporteNuevo) {vehiculo = transporteNuevo}
  method puedeLlamar() = false
  method pesoPropio() = 90
  method puedeLlevarPaquete(destino) = destino.dejaPasarA(self) and paquete.estaPago()
}
 object chuck {
  method peso() = 80 
   method puedeLlamar() = true
 }
object neo {
  var credito = 10
  method peso() = 0
   method puedeLlamar() = 0 < credito
   method puedeLlevarPaquete(destino) = destino.dejaPasarA(self) and paquete.estaPago()
   method cargarCredito (creditos) {credito += creditos }
}




















object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}