import destino.*
import mensajero.*
import vehiculo.*

object empresaDeMensajeria{
    const mensajeros = []

    method contratarMensajero(mensajero) {mensajeros.add(mensajero)}
    method despedirMensajero(mensajero) {mensajero.remove(mensajero)}
    method despedirATodos() {mensajeros.clear()}
    method esGrande() = mensajeros.size() > 2
    method elPrimerMenasajeroPuedeEntregarPaquete(destino) = mensajeros.first().puedeLlevarPaquete(destino)
    method pesoDeUltimoMensajero() = mensajeros.last().peso()
    //self.ultimoMensajero().peso()
}

//hacer test