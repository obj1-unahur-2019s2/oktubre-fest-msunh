class MarcaDeCerveza {

	var property gramosDeLupulo = 0 // un numero en gramos
	var property paisDondeSeFabrica = "ninguno"
	
}

class Rubia inherits MarcaDeCerveza {

	var property graduacion = 0

}

class Negra inherits MarcaDeCerveza {

	method graduacion() {
		return graduaciones.reglamentaria().min(gramosDeLupulo * 2)
	}

}

class Roja inherits Negra { // uso el metodo lookup

	override method graduacion() {
		return super() * 1.25
	}

}

object graduaciones{
	var property valorReglamentario = 0
	
	
	method reglamentaria(){
		return valorReglamentario
	}
	
	
	
}

//jarras
class Jarras{
	var property capacidadEnLitros
	var property marca 

	
	
	method contenidoDeAlcohol(){ 
		return capacidadEnLitros * marca.graduacion()/100
		
	}
	
	
	
	
	
	
	
}