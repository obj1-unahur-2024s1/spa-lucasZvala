object spa {
	
	method atender(persona){
		if(persona == "bruno" or persona == "ramiro"){
			persona.recibirMasaje()
			persona.banoVapor()
		}else{
			persona.recibirMasaje()
		}
		
		
	}
	
}

object olivia{
	var concentracion = 6
	
	method recibirMasaje(){
		concentracion = concentracion + 3
	}
	
	method discutir(){
		concentracion = concentracion - 1
	}
	
	
	method gradoDeConcentracion(){
		return concentracion
	}
}

object bruno{
	var feliz = true
	var tieneSed = true
	var peso = 55000
	
	method recibirMasaje(){
		feliz = true
	}
	
	method banoDeVapor(){
		peso = peso -500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		tieneSed = true
		peso = peso + 250
	}
	
	method correr(){
		peso = peso -300
	}
	
	method verNoticiero(){
		feliz = false
	}
	
	method estaPerfecto(){
		
		return not tieneSed and not feliz and peso <= 70000 and peso >= 50000 
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	
}


object ramiro{
	var contractura = 0
	var pielGrasosa = false
	
	method recibirMasaje()  {
		contractura = contractura - 2
		if (contractura < 0){
			contractura = 0
		}
	}
	
	method  banoVapor(){
		pielGrasosa = false
	}
	
	method  comerBigMac(){
		pielGrasosa = true
	}
	
	method  bajarALaFosa(){
		contractura = contractura +1
		pielGrasosa = true 
	}
	
	method  jugarAlPaddle(){
		contractura = contractura +3
	}
	
	method  diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
}