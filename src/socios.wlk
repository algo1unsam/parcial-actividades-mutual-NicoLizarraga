import viajes.*
import gimnasia.*

class Socio {
	var actividades = []
	var maximoActividades
	const edad
	var idiomas = []
	var property tipoDeSocio
	
	method agregarActividad(actividad) = if (self.validaCantActividad())
		actividades.add(actividad)
	else
	error.throwWithMessage("No puede realizar mas actividades")
	
	method validaCantActividad() = actividades.size() < maximoActividades
	
	method esAdoradorDelSol() = actividades.all{act=>act.sirveParaBroncearse()}
	
	method realizoActividadesEsforzadas() = actividades.filter{act=>act.implicaEsfuerzo()} 
	
	method leAtrae(actividad) = tipoDeSocio.condicion(actividad)
	
}

object tranquilo{
	
	method condicion(actividad) = actividad.cuantosDiasLleva() > 4
}

object coherente{
	
}

object relajado{
	
}
