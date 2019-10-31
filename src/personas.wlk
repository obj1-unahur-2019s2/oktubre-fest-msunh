import marcasJarras.*

class Persona {
	var property peso = 0
	var property jarrasDeCervezaQueCompro = []
	var property leGustaLaMusicaTradicional = true
	var property nivelDeAguante = 0
	
	
	
	method comprarCerveza(cerveza) {
		jarrasDeCervezaQueCompro.add(cerveza)
	}
	
	
	method totalDeAlcohol() {
		return jarrasDeCervezaQueCompro.sum({ jarra => jarra.contenidoDeAlcohol() })
	}
	
	//y su nivel de aguante, que es un número. Una persona está ebria si la cantidad 
	//de alcohol que ingirió multiplicado por su peso supera su aguante.
	
	method estaEbria() {
		return self.totalDeAlcohol() * self.peso() > self.nivelDeAguante()
	}
	
//	method leGustaAlBelga(cerveza){
//			return cerveza.gramosDeLupulo() > 4 
//	}	
//	
//	method leGustaAlCheco(cerveza){
//		return cerveza.graduacion() > 8
//	}
//	
//	method leGustaAlAleman(cerveza){
//		return true
//	}
 	

	
}	
	
class Aleman inherits Persona{
	method leGustaMarca(marca){
		return true
	}
}

class Belga inherits Persona{
	method leGustaMarca(marca){
		return marca.gramosDeLupulo() > 4
	}
}

class Checo inherits Persona{
	method leGustaMarca(marca){
		return marca.graduacion() > 8
	}
}
