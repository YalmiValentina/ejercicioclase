class Docente
	attr_accessor dni,nombre,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza;
	def initialize(dni,nombre,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza)
		@dni=dni;
		@nombre=nombre;
		@apellido=apellido;
		@grado=grado;
		@antiguedad=antiguedad;
		@horas_trabajadas=horas_trabajadas;
		@minutos_tardanza=minutos_tardanza;
	end
	def imprimirDatosDocente
		puts "Nombre #{@nombre} #{@apellido}"
		puts "DNI #{@dni}"
		puts "Grado de instrucción #{@grado}"
		puts "Antiguedad #{@antiguedad}"
		puts "Horas trabajadas #{@horas_trabajadas}"
		puts "Minutos de tardanza #{@minutos_tardanza}"
		puts "******************"
	end

end

profesor1= Docente.new "123","juan","perez","p", "2","3","3"
puts profesor1.dni