
object paquetito {
   method precio() =0
   method estaPago() = true
   method puedeSerEntregado(mensajero, destino) = true
}
object paquetonViajero {
    const destinos = []
    var pago= 0
   method precio() = destinos.size() * 100
                     // pregunta a la lista cuantos hay
   method estaPago() = true
   //method puedeSerEntregado(mensajero, destino) = true
   method serPagado() {pago = self.precio()}
   method recibirPago() {pago += peso}
   method agregarDestino(destino) {destino.add(destino)}
   method puedeSerEntregado (mensajero,destino) = destino.all({ d => mensajero.puedellevarPaquete (d)}) and self.estaPago()
}