object pepita {
	var energia = 100
	var vecesAlimentada = 0
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		vecesAlimentada += 1
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
	
	method vecesAlimentada() {
		return vecesAlimentada
	}
}

object pepon {
	var energia = 30
	var vecesAlimentada = 0
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2
		vecesAlimentada += 1
	}
	
	method volar(distancia) {
		energia = energia - 20 - 2 * distancia
	}
	
	method energia() {
		return energia
	}
	
	method vecesAlimentada() {
		return vecesAlimentada
	}
}

object roque {
	var ave = pepita
	
	method ave(_ave) {
		ave = _ave
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
	}
	
	method cenas() {
		return ave.vecesAlimentada()
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}