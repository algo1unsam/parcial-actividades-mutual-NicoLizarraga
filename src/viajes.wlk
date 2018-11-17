import viajes.*
import gimnasia.*
import socios.*

class Viaje {
	var idioma = []
	//var property tipoDeViaje
	
	method esInteresante() = idioma.size() > 2
	
}

class Playa inherits Viaje{
	
	var largoDePlaya 
	
	method cuantosDiasLleva() = largoDePlaya / 500
	
	method implicaEsfuerzo(){
		return  largoDePlaya  > 1200  
	}
	method sirveParaBroncearse() = true
	
	
}

class ExcursionAciudad inherits Viaje{
	
	var atraccionesAvisitar 
	
	method cuantosDiasLleva() = atraccionesAvisitar / 2
	
	method implicaEsfuerzo(){
		return atraccionesAvisitar >= 5
	}
	
	method sirveParaBroncearse() = false
	
	override method esInteresante() = super() or atraccionesAvisitar == 5
	
}
object ciudadNormal{
	var property dias = 0
	
	method sirveParaBroncearse() = false
	
}
object ciudadTropical{
	var property dias = 1
	
	method sirveParaBroncearse() = true
	
}

class SalidaDeTrekking inherits Viaje{
	var kmsSenderos
	var cuantosDiasDeSol
	
	 method cuantosDiasLleva() = kmsSenderos /50
	
	 method implicaEsfuerzo(){
		return kmsSenderos > 80
	}
	
	 method sirveParaBroncearse() = cuantosDiasDeSol > 200 or (cuantosDiasDeSol.between(100,200) and kmsSenderos >120)

	override method esInteresante() = super() and cuantosDiasDeSol > 140
		
}






