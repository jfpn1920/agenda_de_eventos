Algoritmo agenda_de_eventos
	Definir opcion,total,i,pos,idBuscado Como Entero
	Dimension id[100]
	Dimension nombre[100],categoria[100],fecha[100],hora[100],lugar[100],organizador[100],estado[100]
	total<-0
	//--------------------------------------//
	//--|menu_principal_agenda_de_eventos|--//
	//--------------------------------------//
	Repetir
		Escribir "menu principal agenda de eventos"
		Escribir "1) registrar evento"
		Escribir "2) editar evento"
		Escribir "3) eliminar evento"
		Escribir "4) buscar evento"
		Escribir "5) listar eventos"
		Escribir "6) ver detalles"
		Escribir "7) salir"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_evento|--//
			//----------------------//
			1:
				Si total<100 Entonces
					total<-total+1
					id[total]<-total
					Escribir "nombre:"; Leer nombre[total]
					Escribir "categoria:"; Leer categoria[total]
					Escribir "fecha:"; Leer fecha[total]
					Escribir "hora:"; Leer hora[total]
					Escribir "lugar:"; Leer lugar[total]
					Escribir "organizador:"; Leer organizador[total]
					Escribir "estado:"; Leer estado[total]
				SiNo
					Escribir "agenda llena."
				FinSi
			//-------------------//
			//--|editar_evento|--//
			//-------------------//
			2:
				Si total = 0 Entonces
					Escribir "no hay eventos registrados."
				SiNo
					Escribir "datos de eventos a editar"
					Para i <- 1 Hasta total
						Escribir id[i]," | ",nombre[i]," | ",categoria[i]," | ",fecha[i]," | ",hora[i]," | ",estado[i]
					FinPara
					Escribir "coloque la id para editar:"
					Leer idBuscado
					pos <- 0
					Para i <- 1 Hasta total
						Si id[i] = idBuscado Entonces
							pos <- i
						FinSi
					FinPara
					Si pos > 0 Entonces
						Escribir "ingrese los nuevos datos"
						Escribir "nuevo nombre:"
						Leer nombre[pos]
						Escribir "nueva categoria:"
						Leer categoria[pos]
						Escribir "nueva fecha:"
						Leer fecha[pos]
						Escribir "nueva hora:"
						Leer hora[pos]
						Escribir "nuevo lugar:"
						Leer lugar[pos]
						Escribir "nuevo organizador:"
						Leer organizador[pos]
						Escribir "nuevo estado:"
						Leer estado[pos]
						Escribir "evento actualizado correctamente."
					SiNo
						Escribir "no se encontro un evento con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_evento|--//
			//---------------------//	
			3:
				Si total = 0 Entonces
					Escribir "no hay eventos registrados."
				SiNo
					Escribir "datos de eventos a eliminar"
					Para i <- 1 Hasta total
						Escribir id[i]," | ",nombre[i]," | ",categoria[i]," | ",fecha[i]," | ",hora[i]," | ",estado[i]
					FinPara
					Escribir "coloque la id para eliminar:"
					Leer idBuscado
					pos <- 0
					Para i <- 1 Hasta total
						Si id[i] = idBuscado Entonces
							pos <- i
						FinSi
					FinPara
					Si pos > 0 Entonces
						Si pos < total Entonces
							Para i <- pos Hasta total - 1
								id[i] <- id[i + 1]
								nombre[i] <- nombre[i + 1]
								categoria[i] <- categoria[i + 1]
								fecha[i] <- fecha[i + 1]
								hora[i] <- hora[i + 1]
								lugar[i] <- lugar[i + 1]
								organizador[i] <- organizador[i + 1]
								estado[i] <- estado[i + 1]
							FinPara
						FinSi
						total <- total - 1
						Escribir "evento eliminado correctamente."
					SiNo
						Escribir "no se encontro un evento con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_evento|--//
			//-------------------//	
			4:
				Escribir "id a buscar:"; Leer idBuscado
				pos<-0
				Para i<-1 Hasta total
					Si id[i]=idBuscado Entonces
						pos<-i
					FinSi
				FinPara
				Si pos>0 Entonces
					Escribir id[pos]," - ",nombre[pos]," - ",fecha[pos]
				SiNo
					Escribir "no encontrado."
				FinSi
			//--------------------//
			//--|listar_eventos|--//
			//--------------------//	
			5:
				Si total=0 Entonces
					Escribir "sin eventos."
				SiNo
					Para i<-1 Hasta total
						Escribir id[i]," | ",nombre[i]," | ",fecha[i]," | ",estado[i]
					FinPara
				FinSi
			//------------------//
			//--|ver_detalles|--//
			//------------------//	
			6:
				Escribir "id:"; Leer idBuscado
				pos<-0
				Para i<-1 Hasta total
					Si id[i]=idBuscado Entonces
						pos<-i
					FinSi
				FinPara
				Si pos>0 Entonces
					Escribir "id: ",id[pos]
					Escribir "nombre: ",nombre[pos]
					Escribir "categoria: ",categoria[pos]
					Escribir "fecha: ",fecha[pos]
					Escribir "hora: ",hora[pos]
					Escribir "lugar: ",lugar[pos]
					Escribir "organizador: ",organizador[pos]
					Escribir "estado: ",estado[pos]
				SiNo
					Escribir "no encontrado."
				FinSi
		FinSegun
	//-----------------------------//
	//--|salir_de_menu_principal|--//
	//-----------------------------//
	Hasta Que opcion=7
FinAlgoritmo