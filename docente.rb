class Docente
	attr_accessor :dni,name,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza
	def initialize(dni,name,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza)
		@dni=dni;
		@name=name;
		@apellido=apellido;
		@grado=grado;
		@antiguedad=antiguedad;
		@horas_trabajadas=horas_trabajadas;
		@minutos_tardanza=minutos_tardanza;
		@h=10;
	end
end

profesor1=Docente.new(432,"Juan","Alarcon",3,5,100,45);

