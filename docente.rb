class Docente
	#attr_accessor :dni,name,apellido,grado,antiguedad,horas_trabajadas,minutos_tardanza
	@@x=""
	@@y=0
	@@z=0
	@@w=0
	@@v=0.0
	@@docente=[]
	def initialize
		ingreso="Si"
		i=0
		while ingreso=="Si"
			@@docente[i]={}
			print "ingrese DNI: "
			@@docente[i]["dni"]=gets.chomp
			print "ingrese nombre: "
			@@docente[i]["nombre"]=gets.chomp
			print "ingrese apellido: "
			@@docente[i]["apellido"]=gets.chomp
			print "ingrese grado: "
			@@x=gets.chomp
			@@docente[i]["grado"]=@@x
			print "ingrese antiguedad: "
			@@y=gets.to_i
			@@docente[i]["antiguedad"]=@@y
			print "ingrese horas trabajadas: "
			@@z=gets.to_i
			@@docente[i]["horas_trabajadas"]=@@z
			print "ingrese minutos de tardanza: "
			@@w=gets.to_i
			@@docente[i]["minutos_tardanza"]=@@w
			@@v=obtenerPagoDocente
			puts "Sueldo: #{@@v}"
			@@docente[i]["pago_docente"]=@@v
			i=i+1
			print "Desea ingresar otro docente (Si/No): "
			ingreso=gets.chomp
		end
	end
	def datosDocente
		for i in (0...@@docente.count)
			puts "Nombre #{@@docente[i]['nombre']} #{@@docente[i]['apellido']}"
			puts "DNI #{@@docente[i]['dni']}"
			puts "Grado de instrucción #{@@docente[i]['grado']}"
			puts "Antiguedad #{@@docente[i]['antiguedad']}"
			puts "Horas trabajadas #{@@docente[i]['horas_trabajadas']}"
			puts "Minutos de tardanza #{@@docente[i]['minutos_tardanza']}"
			puts "Pago Docente #{@@docente[i]['pago_docente']}"
			puts "******************"
		end
	end
	def claseDocente(clase)
		puts "Docentes con grado #{clase}";
		for i in (0...@@docente.count)
			if @@docente[i]["grado"]==clase
				puts "Nombre #{@@docente[i]['nombre']} #{@@docente[i]['apellido']}";
			end
		end
	end
	def montoPorGrado(clase)
		suma=0;
		for i in (0...@@docente.count)
			if @@docente[i]["grado"]==clase
				suma=suma+@@docente[i]["pago_docente"];
			end
		end
		puts "Monto Pagado por grado #{clase} = #{suma}";
	end
	def obtenerPagoDocente
		tarifa = 0
		case @@x
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
		case @@y
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
		case @@w
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
		pagoMensual= tarifa*(1+aumento)*@@z+bono;
		return pagoMensual
	end

end

profesor1=Docente.new;
profesor1.datosDocente;
profesor1.claseDocente("bachiller");
profesor1.claseDocente("titulado");
profesor1.claseDocente("maestria");
profesor1.claseDocente("doctorado");
profesor1.montoPorGrado("bachiller");
profesor1.montoPorGrado("titulado");
profesor1.montoPorGrado("maestria");
profesor1.montoPorGrado("doctorado");




