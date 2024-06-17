class Viaje {
	const property idiomas=[]
	
	
	method agregarIdiomas(nuevoIdioma) = idiomas.add(nuevoIdioma)
	method quitarIdioma(idioma)= idiomas.remove(idioma)
	method esInteresante()= idiomas.size() > 1 or self.condicionAdicional()
	method condicionAdicional()
	method esRecomendada(){}

}

class ViajeDePlaya inherits Viaje{
	var largo
	
	method cantDeDiasDeActividad()= largo/500 
	method implicaEsfuerzo()= largo > 1200
	method broncearse() = true
	override method condicionAdicional(){}
	
}
class ExcursionALaCiudad inherits Viaje{
	
	const cantDeAtracciones 
	
	method cantDeDiasDeActividad()= cantDeAtracciones/2
	method implicaEsfuerzo()= cantDeAtracciones>=5 and cantDeAtracciones<=8 
	method broncearse() = false
	override method condicionAdicional()= cantDeAtracciones ==5
}
class ExcursionALaCiudadTropical inherits ExcursionALaCiudad {
	override method cantDeDiasDeActividad()= super()+ 1
	override method broncearse() = true 
	}
	
class Trekking inherits Viaje{
	const property kmDeSendero
	const property diasDeSolPorAnio
	
	method cantDeDiasDeActividad()= kmDeSendero/50
	method implicaEsfuerzo() =kmDeSendero > 80 
	method broncearse()= diasDeSolPorAnio > 200 or (self.hayEntre100y200diasDeSol() and kmDeSendero >120 )
	method hayEntre100y200diasDeSol()= diasDeSolPorAnio >=100 and diasDeSolPorAnio <=200
	override method esInteresante() = super() and self.condicionAdicional()
	override method condicionAdicional()= diasDeSolPorAnio> 140 
}
class ClasesDeGym{
	const property idioma= "espaniol"
	method cantDeDiasDeActividad()= 1
	method implicaEsfuerzo() = true 
	method broncearse() = false
	method esRecomemdada(socio)= socio.edad()>=20 and socio.edad()<=30 
	
	
}