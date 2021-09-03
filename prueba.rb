class imprimir
    def imprimirTitulo(titulo)
      puts "******************"
      puts "#{titulo}"
      puts "******************"
    end
  
    def imprimirDatosDocentes(docentes)
      for docente in docentes
        imprimirDatosDocente(docente)
      end
    end
  
    def imprimirDatosDocente(docente)
      puts "Nombre #{docente.nombre} #{docente.apellido}"
      puts "DNI #{docente.dni}"
      puts "Grado de instrucción #{docente.grado}"
      puts "Antiguedad #{docente.antiguedad}"
      puts "Horas trabajadas #{docente.horasTrabajadas}"
      puts "Minutos de tardanza #{docente.minutosTardanza}"
      puts "******************"
    end
  
    def imprimirPagoDocentes(pagos)
      for pago in pagos
        imprimirPagoDocente(pago[:docente].nombre, pago[:docente].apellido, pago[:pago])
      end
    end
  
    def imprimirPagoDocente(nombre, apellido, pago)
      puts "Docente #{nombre} #{apellido}: #{pago}"
    end
  
    def imprimirTarifa(grado, tarifa)
      puts("Grado #{grado}: #{tarifa}")
    end
  end
  
  
  class Docente
    attr_accessor :dni, :nombre, :apellido, :grado, :antiguedad, :horasTrabajadas, :minutosTardanza
  
    def initialize(dni, nombre, apellido, grado, antiguedad, horasTrabajadas, minutosTardanza)
      @dni = dni
      @nombre = nombre
      @apellido = apellido
      @grado = grado.downcase
      @antiguedad = antiguedad
      @horasTrabajadas = horasTrabajadas
      @minutosTardanza = minutosTardanza
    end
  
  end
  
  profesor1= Docente.new "123","juan","perez","p", "2","3","3"
  puts profesor1.dni