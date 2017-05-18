
def Promedio_notas(nombre)
	file = File.open("Notas.csv", "r")
	contenedor_Notas = file.readlines
	file.close

	array = []

	contenedor_Notas.each do |linea|
	arr = linea.split(", ")
	#print arr
	#se genera un nuevo arreglo y luego la funcion map 
	#combiente a todos en un float
	array << arr.map{|d| d.to_f}
	end

	array[0][0] = "Juan"
	array[1][0] = "Felipe"
	array[2][0] = "Javiera"
	array[3][0] = "Gonzalo"
	i=0
	# puts array[0].length
	while(i<array.length)
		if(array[i][0].upcase.eql? nombre.upcase)
			promedio = 0
			j = 1
			while (j<array[i].length)
				promedio += array[i][j]
				j += 1 
			end
			promedio = promedio/array[i].lenght		 
		end
		i+=1
	end
	file = File.open("nombre_Promedio.txt", "w")
	file.puts "Nombre: #{array[i][0]} Promedio = #{promedio} "
	file.close
end

# puts data.inspect 

opcion=0
while(opcion != 4)
	puts "MENU_de_Seleccion"
	puts "1: Generacion de Archivos para cada alumnos y su promedio de N."
	puts "2: Cantidad de Inasistencia del Alumno por Pantalla"
	puts "3: Alumnos que aprobaron "
	puts "4: Salir"
	opcion = gets.chomp.to_i

	if (opcion >= 1 && opcion <= 4)
		case opcion
		when 1
			puts "Ingrese nombre del estudiante"
			nombre = gets.chomp
			Promedio_notas(nombre)

		when 2
			
		when 3
			
		when 4
			puts"Cerrando Sesión, el programa ha finalizado correctamente."
		end
	else
		puts "opción inválida, por favor, intente nuevamente."
	end

end