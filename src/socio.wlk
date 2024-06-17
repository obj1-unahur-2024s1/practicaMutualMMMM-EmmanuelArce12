import viajes.*
class Socio{
	const actividades= []
	const maximoDeActividadPorSocio
	var edad
	const idiomasHablados= #{}
	
	
	method edad()=edad
	method cantDeActividades()= actividades.size()
	// agregar actividad, es un metodo que hace algo o retorna algo?
	method agregarActividad(nuevaAct){ 
		if (maximoDeActividadPorSocio > self.cantDeActividades()){
			actividades.add(nuevaAct) }
		else{
			self.error("No se permiten mas actividades")
			}	
	} 
	method adoradorDelSol()= actividades.all({x=>x.broncearse()})
	method actividadesEsforzadas()= actividades.filter({x=>x.implicaEsfuerzo()})

	method maximoDeActividadesPorSocio()= maximoDeActividadPorSocio
	method leAtrae(act)
	}
class SocioTranquilo inherits Socio{
	 override method leAtrae(act)= act.cantDeDiasDeActividad()>=4
	
}
class SocioCoherente inherits Socio {
	override method leAtrae(act)= if(self.adoradorDelSol()) act.broncearse() else act.implicaEsfuerzo()
}
// Buscar documentacion de mensajes en listas.
class SocioRelajado inherits Socio{
	override method leAtrae(act) = not idiomasHablados.intersection(act.idiomas()).isEmpty()
}