class Docente
	attr_accessor: dni,nombre,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza;
	def initialize(dni,nombre,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza)
		@dni=dni;
		@nombre=nombre;
		@apellido=apellido;
		@grado=grado;
		@antiguedad=antiguedad;
		@horas_trabajadas=horas_trabajadas;
		@minutos_tardanza=minutos_tardanza;
	end
end