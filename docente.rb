class Docente
	#attr_accessor :dni,name,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza
	@@sueldo=0;
	def initialize
		print "ingrese DNI: "
		@dni=gets.chomp
		print "ingrese nombre: "
		@nombre = gets.chomp
		print "ingrese apellido: "
		@apellido = gets.chomp
		print "ingrese grado: "
		@grado = gets.chomp
		print "ingrese antiguedad: "
		@antiguedad = gets.to_i
		print "ingrese horas trabajadas: "
		@horas_trabajadas = gets.to_i
		print "ingrese minutos de tardanza: "
		@minutos_tardanza = gets.to_i
		@pago_docente=obtenerPagoDocente
	end
	def imprimirDatosDocente
		puts "Nombre #{@nombre} #{@apellido}"
		puts "DNI #{@dni}"
		puts "Grado de instrucción #{@grado}"
		puts "Antiguedad #{@antiguedad}"
		puts "Horas trabajadas #{@horas_trabajadas}"
		puts "Minutos de tardanza #{@minutos_tardanza}"
		puts "Pago Docente #{@pago_docente}"
		puts "******************"
	end
	def obtenerPagoDocente
		tarifa = 0
		case @grado
			when "bachiller"
				tarifa = 40
			when "titulado"
				tarifa = 80
			when "maestria"
				tarifa = 100
			when "doctorado"
				tarifa = 180
			else
				tarifa = 0
		end
		aumento = 0
		case @antiguedad
			when 0..3
			aumento = 0.03
			when 4..6
			aumento = 0.04
			when 7..10
			aumento = 0.05
			when 11..15
			aumento = 0.07
			else
			aumento = 0.1
		end
		bono = 0
		case @minutos_tardanza
			when 0
			bono = 120
			when 1..5
			bono = 80
			when 6..10
			bono = 40
			when 11..15
			bono = 0
			else
			bono = -40
		end
		pagoMensual= tarifa*(1+aumento)*@horas_trabajadas + bono;
		return pagoMensual
	end

end


#profesor1= Docente.new "123","Juan","Perez","bachiller", 10,300,30;
=begin
puts profesor1.imprimirDatosDocente;
puts profesor1.obtenerPagoDocentePorGrado;
puts profesor1.calcularAumento;
puts profesor1.calcularBono;
=end
profesor1=Docente.new
puts profesor1.imprimirDatosDocente


