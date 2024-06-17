class Viaje {
	const property idiomas=[]
	
	
	method agregarIdiomas(nuevoIdioma) = idiomas.add(nuevoIdioma)
	method quitarIdioma(idioma)= idiomas.remove(idioma)
	method esInteresante()= idiomas.size() > 1 or self.condicionAdicional()
	method condicionAdicional()
	method esRecomendada(){}
	// CADA VAIEJE DEBE SABER RESPONDER.
	// Son metodos que tienen que estar si o si, en cada viaje,
	// vos desp lo sobrescribis en cada viaje.
	method cantDeDiasDeActividad()
	method implicaEsfuerzo()
	method broncearse()
}

class ViajeDePlaya inherits Viaje{
	var largo
	
	override method cantDeDiasDeActividad()= largo/500 
	override method implicaEsfuerzo()= largo > 1200
	override method broncearse() = true
	override method condicionAdicional(){}
	
}
class ExcursionALaCiudad inherits Viaje{
	
	const cantDeAtracciones 
	
	override method cantDeDiasDeActividad()= cantDeAtracciones/2
	override method implicaEsfuerzo()= cantDeAtracciones.between(5,8)
	override method broncearse() = false
	override method condicionAdicional()= cantDeAtracciones ==5
}
class ExcursionALaCiudadTropical inherits ExcursionALaCiudad {
	override method cantDeDiasDeActividad()= super()+ 1
	override method broncearse() = true 
	}
	
class Trekking inherits Viaje{
	const property kmDeSendero
	const property diasDeSolPorAnio
	
	override method cantDeDiasDeActividad()= kmDeSendero/50
	override method implicaEsfuerzo() =kmDeSendero > 80 
	override method broncearse()= diasDeSolPorAnio > 200 or (self.hayEntre100y200diasDeSol() and kmDeSendero >120 )
	method hayEntre100y200diasDeSol()= diasDeSolPorAnio.between(100,200)
	override method esInteresante() = super() and self.condicionAdicional()
	override method condicionAdicional()= diasDeSolPorAnio> 140 
}
class ClasesDeGym inherits Viaje{
	// debrias respetar lo mismo que antes, aunque sea un unico idioma, es una lista con un unico idioma.
	method initialize() {
		if(idiomas!= {"espaniol"}) {
			self.error("solo se permite clase de gimnasia en espaniol")
		}
	} 
	method cantDeDiasDeActividad()= 1
	method implicaEsfuerzo() = true 
	method broncearse() = false
	method esRecomemdada(socio)= socio.edad()>=20 and socio.edad()<=30 
	
	
}