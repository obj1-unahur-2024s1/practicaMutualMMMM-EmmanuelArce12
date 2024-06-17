import viajes.*
class Socio{
	const actividades= []
	const maximoDeActividadPorSocio
	var edad
	const idiomasHablados= #{}
	
	
	method edad()=edad
	method cantDeActividades()= actividades.size()
	method agregarActividad(nuevaAct){return 
		if (maximoDeActividadPorSocio > self.cantDeActividades()){
			actividades.add(nuevaAct) }
		else{
			self.error("No se permiten mas actividades")}
			
			} 
	method adoradorDelSol()= actividades.all({x=>x.broncearse()})
	method actividadesEsforzadas()= actividades.filter({x=>x.implicaEsfuerzo()})

	method maximoDeActividadesPorSocio()= maximoDeActividadPorSocio
	}
class SocioTranquilo inherits Socio{
	 method leAtrae(act)= act.cantDeDiasDeActividad()>=4
	
}
class SocioCoherente inherits Socio {
	method leAtrae(act)=return if(self.adoradorDelSol()) act.broncearse() else act.implicaEsfuerzo()
}
class SocioRelajado inherits Socio{
	method leAtrae(act) = actividades.any({x=>act.idiomas()==self.listaDeIdiomasHabladosPorSocio()})
	method listaDeIdiomasHabladosPorSocio()= actividades.filter({x=>self.listaDeIdiomasHablados()})
	method listaDeIdiomasHablados()=idiomasHablados.asList()
}