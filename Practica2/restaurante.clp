; Fri May 19 10:50:13 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(cardinality 1 3)
		(create-accessor read-write))
	(single-slot segundo+plato
		(type INSTANCE)
;+		(allowed-classes Segundo Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio+de+venta
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ingrediente+principal
		(type SYMBOL)
		(allowed-values Carne Pescado Vegetales Pasta Arroz Pan Legumbres FrutosSecos Lacteos Marisco)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ontologia_Class30000
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pensado+para+poca+gente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot primer+plato
		(type INSTANCE)
;+		(allowed-classes Primero Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cubierto
		(type SYMBOL)
		(allowed-values Tenedor Cuchara)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot bebidas+compatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(multislot ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot temperatura
		(type SYMBOL)
		(allowed-values frio caliente)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Bebida+conjunta
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cocina
		(type SYMBOL)
		(allowed-values Tradicional Moderna Regional Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Numero+comenasles
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vino
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Celiaco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type SYMBOL)
		(allowed-values Tradicional Moderno Regional Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role abstract)
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Numero+comenasles
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Evento+Familiar
	(is-a Evento)
	(role abstract))

(defclass Bautizo
	(is-a Evento+Familiar)
	(role concrete))

(defclass Boda
	(is-a Evento+Familiar)
	(role concrete))

(defclass Comunion
	(is-a Evento+Familiar)
	(role concrete))

(defclass Aniversario
	(is-a Evento+Familiar)
	(role concrete))

(defclass Despedida
	(is-a Evento+Familiar)
	(role concrete))

(defclass Congreso
	(is-a Evento)
	(role abstract))

(defclass Comida
	(is-a Congreso)
	(role concrete))

(defclass Cena
	(is-a Congreso)
	(role concrete))

(defclass Menu
	(is-a USER)
	(role concrete)
	(multislot bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(cardinality 1 3)
		(create-accessor read-write))
	(single-slot primer+plato
		(type INSTANCE)
;+		(allowed-classes Primero Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot segundo+plato
		(type INSTANCE)
;+		(allowed-classes Segundo Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Componente
	(is-a USER)
	(role abstract)
	(single-slot Precio+de+venta
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a Componente)
	(role abstract)
	(single-slot Cocina
		(type SYMBOL)
		(allowed-values Tradicional Moderna Regional Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cubierto
		(type SYMBOL)
		(allowed-values Tenedor Cuchara)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ingrediente+principal
		(type SYMBOL)
		(allowed-values Carne Pescado Vegetales Pasta Arroz Pan Legumbres FrutosSecos Lacteos Marisco)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot pensado+para+poca+gente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot temperatura
		(type SYMBOL)
		(allowed-values frio caliente)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Celiaco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Postre
	(is-a Plato)
	(role concrete))

(defclass Primero
	(is-a Plato)
	(role concrete))

(defclass Segundo
	(is-a Plato)
	(role concrete))

(defclass Primero%2FSegundo
	(is-a Plato)
	(role concrete))

(defclass Bebida
	(is-a Componente)
	(role concrete))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))
		
(definstances instancias

; Fri May 19 10:50:13 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([ontologia_Class0] of  Primero%2FSegundo

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Cuchara)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class46]
		[ontologia_Class50]
		[ontologia_Class3]
		[ontologia_Class52]
		[ontologia_Class18]
		[ontologia_Class8]
		[ontologia_Class10030])
	(Lactosa TRUE)
	(Nombre "Estofado")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 7.0)
	(temperatura caliente)
	(Temporada Invierno)
	(Vegetariano FALSE))

([ontologia_Class10000] of  Primero%2FSegundo

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Marisco)
	(ingredientes
		[ontologia_Class10001]
		[ontologia_Class20002]
		[ontologia_Class20003]
		[ontologia_Class10020]
		[ontologia_Class10018]
		[ontologia_Class20004]
		[ontologia_Class20005])
	(Lactosa TRUE)
	(Nombre "Raviolis de gamba rojas y setas")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 62.4)
	(temperatura caliente)
	(Temporada Otono)
	(Vegetariano FALSE))

([ontologia_Class10001] of  Ingrediente

	(Nombre "Gamba Roja"))

([ontologia_Class10002] of  Primero

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pasta)
	(ingredientes
		[ontologia_Class3]
		[ontologia_Class62]
		[ontologia_Class19]
		[ontologia_Class63]
		[ontologia_Class33]
		[ontologia_Class64]
		[ontologia_Class8]
		[ontologia_Class10003]
		[ontologia_Class10004]
		[ontologia_Class10005]
		[ontologia_Class50])
	(Lactosa FALSE)
	(Nombre "Lasana")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 8.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10003] of  Ingrediente

	(Nombre "Lasana"))

([ontologia_Class10004] of  Ingrediente

	(Nombre "Mozzarella"))

([ontologia_Class10005] of  Ingrediente

	(Nombre "Chorizo"))

([ontologia_Class10006] of  Bebida

	(Nombre "Vino rojo Lacryma Christi del Vesuvio")
	(Precio+de+venta 10.09))

([ontologia_Class10008] of  Primero

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pasta)
	(ingredientes
		[ontologia_Class3]
		[ontologia_Class10009]
		[ontologia_Class10010]
		[ontologia_Class10011]
		[ontologia_Class19]
		[ontologia_Class62]
		[ontologia_Class10012]
		[ontologia_Class63]
		[ontologia_Class8])
	(Lactosa FALSE)
	(Nombre "Bolonesa canelones")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 9.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10009] of  Ingrediente

	(Nombre "Canelones"))

([ontologia_Class10010] of  Ingrediente

	(Nombre "Requeson"))

([ontologia_Class10011] of  Ingrediente

	(Nombre "Jamos cocido"))

([ontologia_Class10012] of  Ingrediente

	(Nombre "Bovino"))

([ontologia_Class10013] of  Bebida

	(Nombre "Vino rojo Sangiovese")
	(Precio+de+venta 15.9))

([ontologia_Class10014] of  Primero

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pasta)
	(ingredientes
		[ontologia_Class19]
		[ontologia_Class10016]
		[ontologia_Class10017]
		[ontologia_Class62]
		[ontologia_Class10018]
		[ontologia_Class8])
	(Lactosa FALSE)
	(Nombre "Carbonara")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 4.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10015] of  Bebida

	(Nombre "Vino rojo Brunello di Montalcino")
	(Precio+de+venta 40.0))

([ontologia_Class10016] of  Ingrediente

	(Nombre "Panceta"))

([ontologia_Class10017] of  Ingrediente

	(Nombre "Espaguetis"))

([ontologia_Class10018] of  Ingrediente

	(Nombre "Aceite de oliva"))

([ontologia_Class10019] of  Segundo

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class11]
		[ontologia_Class3]
		[ontologia_Class19]
		[ontologia_Class33]
		[ontologia_Class10020]
		[ontologia_Class10004]
		[ontologia_Class62]
		[ontologia_Class8])
	(Lactosa FALSE)
	(Nombre "Parmesana")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 6.0)
	(temperatura caliente)
	(Vegetariano TRUE))

([ontologia_Class10020] of  Ingrediente

	(Nombre "Aceite de girasol"))

([ontologia_Class10021] of  Ingrediente

	(Nombre "Mozzarella di bufala"))

([ontologia_Class10022] of  Bebida

	(Nombre "Vino rojo Chianti clasico")
	(Precio+de+venta 14.5))

([ontologia_Class10023] of  Postre

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class10024]
		[ontologia_Class10025]
		[ontologia_Class10026]
		[ontologia_Class63]
		[ontologia_Class10027]
		[ontologia_Class64]
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class10028]
		[ontologia_Class10010])
	(Lactosa FALSE)
	(Nombre "Pastiera")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 13.0)
	(temperatura frio)
	(Temporada Primavera)
	(Vegetariano TRUE))

([ontologia_Class10024] of  Ingrediente

	(Nombre "Maiz cocido"))

([ontologia_Class10025] of  Ingrediente

	(Nombre "Azahar"))

([ontologia_Class10026] of  Ingrediente

	(Nombre "Vainillina"))

([ontologia_Class10027] of  Ingrediente

	(Nombre "Pastaflora"))

([ontologia_Class10028] of  Ingrediente

	(Nombre "Fruta confitada"))

([ontologia_Class10029] of  Bebida

	(Nombre "Limoncello")
	(Precio+de+venta 13.5))

([ontologia_Class10030] of  Ingrediente

	(Nombre "Vino rojo"))

([ontologia_Class10031] of  Segundo

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class15]
		[ontologia_Class10032]
		[ontologia_Class18]
		[ontologia_Class10018]
		[ontologia_Class8]
		[ontologia_Class26])
	(Lactosa TRUE)
	(Nombre "Butifarra con mongetes")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 6.9)
	(temperatura caliente)
	(Temporada Otono)
	(Vegetariano FALSE))

([ontologia_Class10032] of  Ingrediente

	(Nombre "Mongeta"))

([ontologia_Class10033] of  Primero

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Arroz)
	(ingredientes
		[ontologia_Class39]
		[ontologia_Class18]
		[ontologia_Class30]
		[ontologia_Class3]
		[ontologia_Class8]
		[ontologia_Class10034]
		[ontologia_Class43])
	(Lactosa TRUE)
	(Nombre "Arroz negro")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 7.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10034] of  Ingrediente

	(Nombre "Marisco"))

([ontologia_Class10035] of  Segundo

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class51]
		[ontologia_Class57]
		[ontologia_Class8]
		[ontologia_Class10036]
		[ontologia_Class10018]
		[ontologia_Class66]
		[ontologia_Class10037]
		[ontologia_Class10038]
		[ontologia_Class77]
		[ontologia_Class32]
		[ontologia_Class10039]
		[ontologia_Class10040]
		[ontologia_Class64]
		[ontologia_Class10041])
	(Lactosa FALSE)
	(Nombre "Pollo asado a la catalana")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 8.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10036] of  Ingrediente

	(Nombre "Vino rancio"))

([ontologia_Class10037] of  Ingrediente

	(Nombre "Hierbas provenzales"))

([ontologia_Class10038] of  Ingrediente

	(Nombre "Estragon"))

([ontologia_Class10039] of  Ingrediente

	(Nombre "Pasas sultanas"))

([ontologia_Class10040] of  Ingrediente

	(Nombre "Ciruelas"))

([ontologia_Class10041] of  Ingrediente

	(Nombre "Frutos secos"))

([ontologia_Class10042] of  Segundo

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class10004]
		[ontologia_Class3]
		[ontologia_Class10018]
		[ontologia_Class8]
		[ontologia_Class10043])
	(Lactosa FALSE)
	(Nombre "Caprese")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 3.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class10043] of  Ingrediente

	(Nombre "Oregano"))

([ontologia_Class10044] of  Primero

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pasta)
	(ingredientes
		[ontologia_Class10045]
		[ontologia_Class62]
		[ontologia_Class50]
		[ontologia_Class64]
		[ontologia_Class8]
		[ontologia_Class10046]
		[ontologia_Class10047])
	(Lactosa FALSE)
	(Nombre "Ravioles")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 6.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class10045] of  Ingrediente

	(Nombre "Ravioles"))

([ontologia_Class10046] of  Ingrediente

	(Nombre "Parmesano"))

([ontologia_Class10047] of  Ingrediente

	(Nombre "Salvia"))

([ontologia_Class10048] of  Postre

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class19]
		[ontologia_Class10049]
		[ontologia_Class68]
		[ontologia_Class10050]
		[ontologia_Class10051]
		[ontologia_Class10052])
	(Lactosa TRUE)
	(Nombre "Tiramisu")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 7.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class10049] of  Ingrediente

	(Nombre "Cafe"))

([ontologia_Class10050] of  Ingrediente

	(Nombre "Cacao"))

([ontologia_Class10051] of  Ingrediente

	(Nombre "Bizcochos de soletilla"))

([ontologia_Class10052] of  Ingrediente

	(Nombre "Mascarpone"))

([ontologia_Class10053] of  Bebida

	(Nombre "Licor Amaretto")
	(Precio+de+venta 11.0))

([ontologia_Class10054] of  Postre

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class10055]
		[ontologia_Class33]
		[ontologia_Class81]
		[ontologia_Class64]
		[ontologia_Class10056]
		[ontologia_Class10057])
	(Lactosa FALSE)
	(Nombre "Baba")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 5.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class10055] of  Ingrediente

	(Nombre "Ron"))

([ontologia_Class10056] of  Ingrediente

	(Nombre "Frutos rojos"))

([ontologia_Class10057] of  Ingrediente

	(Nombre "Crema de chantilly"))

([ontologia_Class10058] of  Postre

	(Celiaco TRUE)
	(Cocina Tradicional)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class10059]
		[ontologia_Class63]
		[ontologia_Class68]
		[ontologia_Class10040]
		[ontologia_Class10060]
		[ontologia_Class10061]
		[ontologia_Class10062]
		[ontologia_Class10063])
	(Lactosa FALSE)
	(Nombre "Panacota")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 5.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class10059] of  Ingrediente

	(Nombre "Gelatina"))

([ontologia_Class10060] of  Ingrediente

	(Nombre "Vainilla"))

([ontologia_Class10061] of  Ingrediente

	(Nombre "Menta"))

([ontologia_Class10062] of  Ingrediente

	(Nombre "Brandy"))

([ontologia_Class10063] of  Ingrediente

	(Nombre "Orejones de albaricoques"))

([ontologia_Class10064] of  Postre

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Cuchara)
	(Ingrediente+principal Pan)
	(ingredientes
		[ontologia_Class33]
		[ontologia_Class32]
		[ontologia_Class64]
		[ontologia_Class19]
		[ontologia_Class27])
	(Lactosa FALSE)
	(Nombre "Sbrisolona")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 6.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class10065] of  Bebida

	(Nombre "Vino dulce")
	(Precio+de+venta 8.0))

([ontologia_Class10066] of  Bebida

	(Nombre "Sangria 75 cl")
	(Precio+de+venta 13.5))

([ontologia_Class10067] of  Bebida

	(Nombre "Sidra 75 cl")
	(Precio+de+venta 4.95))

([ontologia_Class10068] of  Bebida

	(Nombre "Granizado")
	(Precio+de+venta 17.95))

([ontologia_Class10069] of  Bebida

	(Nombre "Cava real tesoro brut 75 cl")
	(Precio+de+venta 3.1))

([ontologia_Class10070] of  Bebida

	(Nombre "Gianfranco fino es primitivo di manduria 75 cl")
	(Precio+de+venta 45.0))

([ontologia_Class11] of  Ingrediente

	(Nombre "Berenjena"))

([ontologia_Class12] of  Ingrediente

	(Nombre "Pimiento"))

([ontologia_Class14] of  Primero

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class5]
		[ontologia_Class8]
		[ontologia_Class4]
		[ontologia_Class15]
		[ontologia_Class3]
		[ontologia_Class12]
		[ontologia_Class16]
		[ontologia_Class17]
		[ontologia_Class18]
		[ontologia_Class19]
		[ontologia_Class20]
		[ontologia_Class21]
		[ontologia_Class22])
	(Lactosa TRUE)
	(Nombre "Ensalada catalana")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 5.5)
	(temperatura frio)
	(Vegetariano FALSE))

([ontologia_Class15] of  Ingrediente

	(Nombre "Butifarra"))

([ontologia_Class16] of  Ingrediente

	(Nombre "Rabano"))

([ontologia_Class17] of  Ingrediente

	(Nombre "Lechuga"))

([ontologia_Class18] of  Ingrediente

	(Nombre "Cebolla"))

([ontologia_Class19] of  Ingrediente

	(Nombre "Huevo"))

([ontologia_Class2] of  Ingrediente

	(Nombre "Pan"))

([ontologia_Class20] of  Ingrediente

	(Nombre "Aceitunas"))

([ontologia_Class20000] of  Primero

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Cuchara)
	(Ingrediente+principal Legumbres)
	(ingredientes
		[ontologia_Class30002]
		[ontologia_Class5]
		[ontologia_Class30003])
	(Lactosa TRUE)
	(Nombre "Lentejas con semiesferas de jamon")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 9.5)
	(temperatura caliente)
	(Temporada Invierno)
	(Vegetariano FALSE))

([ontologia_Class20002] of  Ingrediente

	(Nombre "Ceps"))

([ontologia_Class20003] of  Ingrediente

	(Nombre "Cebolla de Figueres"))

([ontologia_Class20004] of  Ingrediente

	(Nombre "Cebollino"))

([ontologia_Class20005] of  Ingrediente

	(Nombre "Microbrotes"))

([ontologia_Class20007] of  Primero

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class20009]
		[ontologia_Class52]
		[ontologia_Class20010]
		[ontologia_Class45]
		[ontologia_Class20011]
		[ontologia_Class20012]
		[ontologia_Class20014]
		[ontologia_Class20015]
		[ontologia_Class20016]
		[ontologia_Class20017])
	(Lactosa TRUE)
	(Nombre "Primavera")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 28.2)
	(temperatura frio)
	(Temporada Primavera)
	(Vegetariano TRUE))

([ontologia_Class20008] of  Bebida

	(Nombre "Ron miel guanche 70 cl.")
	(Precio+de+venta 9.83))

([ontologia_Class20009] of  Ingrediente

	(Nombre "Coliflor joven"))

([ontologia_Class20010] of  Ingrediente

	(Nombre "Esparragos blancos de Navarra medianos"))

([ontologia_Class20011] of  Ingrediente

	(Nombre "Salsifi"))

([ontologia_Class20012] of  Ingrediente

	(Nombre "Chirivias baby"))

([ontologia_Class20014] of  Ingrediente

	(Nombre "Perrechicos medianos"))

([ontologia_Class20015] of  Ingrediente

	(Nombre "Aceite de oliva virgen extra Hojiblanca"))

([ontologia_Class20016] of  Ingrediente

	(Nombre "Agua"))

([ontologia_Class20017] of  Ingrediente

	(Nombre "Sal"))

([ontologia_Class20018] of  Segundo

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class20073]
		[ontologia_Class18]
		[ontologia_Class45]
		[ontologia_Class46]
		[ontologia_Class30]
		[ontologia_Class20076]
		[ontologia_Class20077]
		[ontologia_Class20078]
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class20041]
		[ontologia_Class20080]
		[ontologia_Class20081])
	(Lactosa TRUE)
	(Nombre "Gamo con anchoas y olivas negras")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 46.8)
	(temperatura caliente)
	(Temporada Otono)
	(Vegetariano FALSE))

([ontologia_Class20019] of  Bebida

	(Nombre "Tonica Q Tonic 23.7 cl")
	(Precio+de+venta 2.97))

([ontologia_Class20020] of  Ingrediente

	(Nombre "Cabezas de ajo"))

([ontologia_Class20021] of  Ingrediente

	(Nombre "Pimiento de azafran"))

([ontologia_Class20023] of  Ingrediente

	(Nombre "Pimiento de azafran"))

([ontologia_Class20024] of  Ingrediente

	(Nombre "Costrones de pan frito"))

([ontologia_Class20025] of  Ingrediente

	(Nombre "Fumet de cabezas de langostino"))

([ontologia_Class20026] of  Ingrediente

	(Nombre "Tinta de calamar"))

([ontologia_Class20027] of  Ingrediente

	(Nombre "Salsa de soja"))

([ontologia_Class20028] of  Ingrediente

	(Nombre "Manzanilla"))

([ontologia_Class20029] of  Bebida

	(Nombre "Limoncello Sammarco 70 cl")
	(Precio+de+venta 6.95))

([ontologia_Class20030] of  Primero

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class20031]
		[ontologia_Class20032]
		[ontologia_Class20033]
		[ontologia_Class20034]
		[ontologia_Class20035])
	(Lactosa FALSE)
	(Nombre "Canelon de berza pasiega y morcilla")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 25.6)
	(temperatura frio)
	(Temporada Invierno)
	(Vegetariano FALSE))

([ontologia_Class20031] of  Ingrediente

	(Nombre "Berza pasiega"))

([ontologia_Class20032] of  Ingrediente

	(Nombre "Morcilla"))

([ontologia_Class20033] of  Ingrediente

	(Nombre "Aceite de oliva virgen extra"))

([ontologia_Class20034] of  Ingrediente

	(Nombre "Caldo de oreja"))

([ontologia_Class20035] of  Ingrediente

	(Nombre "Suero  de queso de Pido con pH alto"))

([ontologia_Class20036] of  Primero

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class20037]
		[ontologia_Class20038]
		[ontologia_Class20039]
		[ontologia_Class20040]
		[ontologia_Class20041]
		[ontologia_Class20042]
		[ontologia_Class20017]
		[ontologia_Class19]
		[ontologia_Class20043])
	(Lactosa FALSE)
	(Nombre "Croqueta Joselito by Vía Láctea")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 15.3)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class20037] of  Ingrediente

	(Nombre "Leche cruda de vaca pura"))

([ontologia_Class20038] of  Ingrediente

	(Nombre "Jamon iberico"))

([ontologia_Class20039] of  Ingrediente

	(Nombre "Aceite de oliva suave"))

([ontologia_Class20040] of  Ingrediente

	(Nombre "Mantequilla"))

([ontologia_Class20041] of  Ingrediente

	(Nombre "Harina"))

([ontologia_Class20042] of  Ingrediente

	(Nombre "Jamon serrano"))

([ontologia_Class20043] of  Ingrediente

	(Nombre "Pan rallado"))

([ontologia_Class20044] of  Segundo

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class20045]
		[ontologia_Class20033]
		[ontologia_Class20048]
		[ontologia_Class20049]
		[ontologia_Class20050]
		[ontologia_Class20051]
		[ontologia_Class20040]
		[ontologia_Class20053]
		[ontologia_Class20054])
	(Lactosa FALSE)
	(Nombre "Noquis melosos de patata, salsa cremosa de mantequilla y trufa negra")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 18.4)
	(temperatura caliente)
	(Temporada Verano)
	(Vegetariano TRUE))

([ontologia_Class20045] of  Ingrediente

	(Nombre "Patata monalisa"))

([ontologia_Class20048] of  Ingrediente

	(Nombre "Nata"))

([ontologia_Class20049] of  Ingrediente

	(Nombre "Aceite de trufa"))

([ontologia_Class20050] of  Ingrediente

	(Nombre "Kudzu"))

([ontologia_Class20051] of  Ingrediente

	(Nombre "Sal fina"))

([ontologia_Class20053] of  Ingrediente

	(Nombre "Caldo blanco"))

([ontologia_Class20054] of  Ingrediente

	(Nombre "Trufa negra Melanosporum"))

([ontologia_Class20055] of  Primero%2FSegundo

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class20056]
		[ontologia_Class68]
		[ontologia_Class20017]
		[ontologia_Class20057]
		[ontologia_Class3]
		[ontologia_Class20058]
		[ontologia_Class20059])
	(Lactosa TRUE)
	(Nombre "Nieve de tomate")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 21.7)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20056] of  Ingrediente

	(Nombre "Agua de gazpacho"))

([ontologia_Class20057] of  Ingrediente

	(Nombre "Ovoneve"))

([ontologia_Class20058] of  Ingrediente

	(Nombre "Aceite de tomates semi-secos con hierbas secas"))

([ontologia_Class20059] of  Ingrediente

	(Nombre "Salmorejo de tomates secos"))

([ontologia_Class20060] of  Segundo

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Pescado)
	(ingredientes
		[ontologia_Class20062]
		[ontologia_Class20063]
		[ontologia_Class20064]
		[ontologia_Class20065]
		[ontologia_Class20004]
		[ontologia_Class20067]
		[ontologia_Class10018]
		[ontologia_Class20068]
		[ontologia_Class20069]
		[ontologia_Class20070]
		[ontologia_Class20017])
	(Lactosa TRUE)
	(Nombre "Merlan rebozado, espinaca, curry y piquillos")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 30.5)
	(temperatura caliente)
	(Temporada Primavera)
	(Vegetariano FALSE))

([ontologia_Class20062] of  Ingrediente

	(Nombre "Merlan"))

([ontologia_Class20063] of  Ingrediente

	(Nombre "piquillos"))

([ontologia_Class20064] of  Ingrediente

	(Nombre "Espinaca de Nueva Zelanda"))

([ontologia_Class20065] of  Ingrediente

	(Nombre "Calota"))

([ontologia_Class20067] of  Ingrediente

	(Nombre "Vinagre de Jerez"))

([ontologia_Class20068] of  Ingrediente

	(Nombre "Curry indio"))

([ontologia_Class20069] of  Ingrediente

	(Nombre "Curry Bombay"))

([ontologia_Class20070] of  Ingrediente

	(Nombre "Zumo de limon"))

([ontologia_Class20071] of  Segundo

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Marisco)
	(ingredientes
		[ontologia_Class10018]
		[ontologia_Class18]
		[ontologia_Class20020]
		[ontologia_Class31]
		[ontologia_Class3]
		[ontologia_Class20024]
		[ontologia_Class20025]
		[ontologia_Class20021]
		[ontologia_Class20026]
		[ontologia_Class39]
		[ontologia_Class20082]
		[ontologia_Class20027]
		[ontologia_Class20083]
		[ontologia_Class52])
	(Lactosa TRUE)
	(Nombre "Lago Ness")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 45.9)
	(temperatura caliente)
	(Temporada Verano)
	(Vegetariano FALSE))

([ontologia_Class20073] of  Ingrediente

	(Nombre "Lomo de gamo"))

([ontologia_Class20076] of  Ingrediente

	(Nombre "Pate de olivas"))

([ontologia_Class20077] of  Ingrediente

	(Nombre "Anchoa del cantabrico"))

([ontologia_Class20078] of  Ingrediente

	(Nombre "Kuzu"))

([ontologia_Class20080] of  Ingrediente

	(Nombre "Rigatoni"))

([ontologia_Class20081] of  Ingrediente

	(Nombre "Hoja de sisho"))

([ontologia_Class20082] of  Ingrediente

	(Nombre "Langostino tigre"))

([ontologia_Class20083] of  Ingrediente

	(Nombre "Manzanilla"))

([ontologia_Class20084] of  Primero

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class20085]
		[ontologia_Class18]
		[ontologia_Class20086]
		[ontologia_Class20045]
		[ontologia_Class20087]
		[ontologia_Class20088]
		[ontologia_Class20089]
		[ontologia_Class20026]
		[ontologia_Class20051]
		[ontologia_Class20091]
		[ontologia_Class20092])
	(Lactosa FALSE)
	(Nombre "Patata moai y chimole")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 16.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20085] of  Ingrediente

	(Nombre "Aji amarillo"))

([ontologia_Class20086] of  Ingrediente

	(Nombre "ajo sin germen"))

([ontologia_Class20087] of  Ingrediente

	(Nombre "Base de aji"))

([ontologia_Class20088] of  Ingrediente

	(Nombre "Causa mix"))

([ontologia_Class20089] of  Ingrediente

	(Nombre "Zumo de limon"))

([ontologia_Class20090] of  Ingrediente

	(Nombre "Tintas"))

([ontologia_Class20091] of  Ingrediente

	(Nombre "Mayonesa japonesa"))

([ontologia_Class20092] of  Ingrediente

	(Nombre "Pasta de chimoles"))

([ontologia_Class20093] of  Postre

	(Celiaco TRUE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class63]
		[ontologia_Class20094]
		[ontologia_Class20095]
		[ontologia_Class20096]
		[ontologia_Class19]
		[ontologia_Class68])
	(Lactosa FALSE)
	(Nombre "Petit Pots de Chocolate")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 8.9)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20094] of  Ingrediente

	(Nombre "Crema para batir"))

([ontologia_Class20095] of  Ingrediente

	(Nombre "Chocolate semi-amargo"))

([ontologia_Class20096] of  Ingrediente

	(Nombre "Extracto de vainilla"))

([ontologia_Class20097] of  Postre

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class20098]
		[ontologia_Class20099]
		[ontologia_Class20100]
		[ontologia_Class20101]
		[ontologia_Class19]
		[ontologia_Class10060]
		[ontologia_Class71]
		[ontologia_Class20102]
		[ontologia_Class20103]
		[ontologia_Class68]
		[ontologia_Class20104])
	(Lactosa FALSE)
	(Nombre "Flan de Cajeta con Gelatina de Cafe")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 6.7)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20098] of  Ingrediente

	(Nombre "Cajeta"))

([ontologia_Class20099] of  Ingrediente

	(Nombre "Leche condensada"))

([ontologia_Class20100] of  Ingrediente

	(Nombre "Leche evaporada"))

([ontologia_Class20101] of  Ingrediente

	(Nombre "Queso doble crema"))

([ontologia_Class20102] of  Ingrediente

	(Nombre "Grenetina natural"))

([ontologia_Class20103] of  Ingrediente

	(Nombre "Cafe soluble"))

([ontologia_Class20104] of  Ingrediente

	(Nombre "Agua"))

([ontologia_Class20105] of  Postre

	(Celiaco FALSE)
	(Cocina Tradicional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pan)
	(ingredientes
		[ontologia_Class19]
		[ontologia_Class20106]
		[ontologia_Class63]
		[ontologia_Class20041]
		[ontologia_Class20107]
		[ontologia_Class71]
		[ontologia_Class20108]
		[ontologia_Class20109]
		[ontologia_Class46]
		[ontologia_Class20103]
		[ontologia_Class20110]
		[ontologia_Class20111]
		[ontologia_Class20016])
	(Lactosa FALSE)
	(Nombre "Mini Pastel de zanahoria con chocolate banado de crema de cafe")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 6.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20106] of  Ingrediente

	(Nombre "Azucar mascabada"))

([ontologia_Class20107] of  Ingrediente

	(Nombre "Bicarbonato"))

([ontologia_Class20108] of  Ingrediente

	(Nombre "cocoa"))

([ontologia_Class20109] of  Ingrediente

	(Nombre "Chocolate amargo"))

([ontologia_Class20110] of  Ingrediente

	(Nombre "Leche condensada"))

([ontologia_Class20111] of  Ingrediente

	(Nombre "Esencia de vainilla"))

([ontologia_Class20112] of  Postre

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class20113]
		[ontologia_Class20041]
		[ontologia_Class20040]
		[ontologia_Class20114]
		[ontologia_Class20115]
		[ontologia_Class19])
	(Lactosa FALSE)
	(Nombre "Souffle de Queso Gorgonzola y Nuez")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 9.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20113] of  Ingrediente

	(Nombre "Nuez"))

([ontologia_Class20114] of  Ingrediente

	(Nombre "Leche entera"))

([ontologia_Class20115] of  Ingrediente

	(Nombre "Queso Gorgonzola o Blue cheese"))

([ontologia_Class20116] of  Postre

	(Celiaco FALSE)
	(Cocina Sibarita)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class20117]
		[ontologia_Class20118]
		[ontologia_Class20119]
		[ontologia_Class20120]
		[ontologia_Class20121]
		[ontologia_Class20096]
		[ontologia_Class20122])
	(Lactosa FALSE)
	(Nombre "Parfait de Chocolate Helado")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 7.9)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class20117] of  Ingrediente

	(Nombre "Yoghurth Estilo Griego"))

([ontologia_Class20118] of  Ingrediente

	(Nombre "Crema de leche"))

([ontologia_Class20119] of  Ingrediente

	(Nombre "Yema de huevo"))

([ontologia_Class20120] of  Ingrediente

	(Nombre "azucar granulada"))

([ontologia_Class20121] of  Ingrediente

	(Nombre "Brandy o whisky"))

([ontologia_Class20122] of  Ingrediente

	(Nombre "Chocolate cacao"))

([ontologia_Class21] of  Ingrediente

	(Nombre "Vinagre"))

([ontologia_Class22] of  Ingrediente

	(Nombre "Anchoa"))

([ontologia_Class23] of  Primero

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class24]
		[ontologia_Class25]
		[ontologia_Class26]
		[ontologia_Class27]
		[ontologia_Class4]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Caracoles a la llauna")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 9.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class24] of  Ingrediente

	(Nombre "Caracoles"))

([ontologia_Class25] of  Ingrediente

	(Nombre "Licor"))

([ontologia_Class26] of  Ingrediente

	(Nombre "Perejil"))

([ontologia_Class27] of  Ingrediente

	(Nombre "Limon"))

([ontologia_Class28] of  Segundo

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class29]
		[ontologia_Class3]
		[ontologia_Class18]
		[ontologia_Class30]
		[ontologia_Class31]
		[ontologia_Class8]
		[ontologia_Class32]
		[ontologia_Class33])
	(Lactosa TRUE)
	(Nombre "Fricando de ternera")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 12.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class29] of  Ingrediente

	(Nombre "Ternera"))

([ontologia_Class3] of  Ingrediente

	(Nombre "Tomate"))

([ontologia_Class30] of  Ingrediente

	(Nombre "Ajo"))

([ontologia_Class30002] of  Ingrediente

	(Nombre "Lentejas"))

([ontologia_Class30003] of  Ingrediente

	(Nombre "Agar-agar"))

([ontologia_Class30005] of  Segundo

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Pescado)
	(ingredientes
		[ontologia_Class35]
		[ontologia_Class62]
		[ontologia_Class63]
		[ontologia_Class45]
		[ontologia_Class10018]
		[ontologia_Class66]
		[ontologia_Class30007]
		[ontologia_Class8])
	(Lactosa FALSE)
	(Nombre "Bacalao confitado al azafran y crema de gorgonzola")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 13.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30007] of  Ingrediente

	(Nombre "Ajo"))

([ontologia_Class30008] of  Postre

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class20048]
		[ontologia_Class10056]
		[ontologia_Class10061])
	(Lactosa FALSE)
	(Nombre "Volovanes de nata y frutos rojos")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 7.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class30009] of  Primero%2FSegundo

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Pescado)
	(ingredientes
		[ontologia_Class12]
		[ontologia_Class18]
		[ontologia_Class36]
		[ontologia_Class3]
		[ontologia_Class66]
		[ontologia_Class35]
		[ontologia_Class10018])
	(Lactosa TRUE)
	(Nombre "Bacalao con salsa de pimientos rojos glaseados")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 15.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30010] of  Primero

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Arroz)
	(ingredientes
		[ontologia_Class10020]
		[ontologia_Class18]
		[ontologia_Class30]
		[ontologia_Class46]
		[ontologia_Class39]
		[ontologia_Class77]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Nut Pulao")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 12.5)
	(temperatura caliente)
	(Vegetariano TRUE))

([ontologia_Class30011] of  Primero

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class30012]
		[ontologia_Class30007]
		[ontologia_Class10018]
		[ontologia_Class27]
		[ontologia_Class20004]
		[ontologia_Class20017])
	(Lactosa TRUE)
	(Nombre "Ensalada de brotes y berberechos con alioli de ajos asados")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 8.5)
	(temperatura frio)
	(Vegetariano FALSE))

([ontologia_Class30012] of  Ingrediente

	(Nombre "Berberechos"))

([ontologia_Class30013] of  Postre

	(Celiaco FALSE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class20041]
		[ontologia_Class10060]
		[ontologia_Class30014]
		[ontologia_Class30015]
		[ontologia_Class20048]
		[ontologia_Class63]
		[ontologia_Class10059]
		[ontologia_Class20122]
		[ontologia_Class10020])
	(Lactosa FALSE)
	(Nombre "Tarta de chocolate blanco, fresas y pistachos")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 7.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class30014] of  Ingrediente

	(Nombre "Pistachos"))

([ontologia_Class30015] of  Ingrediente

	(Nombre "Fresa"))

([ontologia_Class30016] of  Segundo

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class30017]
		[ontologia_Class52]
		[ontologia_Class46]
		[ontologia_Class30007]
		[ontologia_Class70]
		[ontologia_Class66]
		[ontologia_Class26]
		[ontologia_Class8]
		[ontologia_Class10018])
	(Lactosa TRUE)
	(Nombre "Pechuga de pavo con salsa de naranja y verduras al horno")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 11.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30017] of  Ingrediente

	(Nombre "Pavo"))

([ontologia_Class30018] of  Primero%2FSegundo

	(Celiaco FALSE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class29]
		[ontologia_Class20068]
		[ontologia_Class2]
		[ontologia_Class20117])
	(Lactosa FALSE)
	(Nombre "Mini hamburguesas indias")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 15.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30019] of  Primero

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class42]
		[ontologia_Class27]
		[ontologia_Class20048]
		[ontologia_Class3]
		[ontologia_Class20017])
	(Lactosa FALSE)
	(Nombre "Tomates cherries rellenos con gambas")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 7.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30020] of  Postre

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class30021]
		[ontologia_Class70]
		[ontologia_Class20117]
		[ontologia_Class68]
		[ontologia_Class63]
		[ontologia_Class20119]
		[ontologia_Class62])
	(Lactosa FALSE)
	(Nombre "Membrillo a la naranja con yogur infusionado con romero y helado de queso manchego")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 6.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class30021] of  Ingrediente

	(Nombre "Membrillo"))

([ontologia_Class30023] of  Postre

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Cuchara)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class30024]
		[ontologia_Class64]
		[ontologia_Class68]
		[ontologia_Class20048]
		[ontologia_Class10060]
		[ontologia_Class77])
	(Lactosa FALSE)
	(Nombre "Peras asadas al caramelo con chantilly")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 5.5)
	(temperatura caliente)
	(Vegetariano TRUE))

([ontologia_Class30024] of  Ingrediente

	(Nombre "Pera"))

([ontologia_Class30025] of  Segundo

	(Celiaco FALSE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class46]
		[ontologia_Class12]
		[ontologia_Class3]
		[ontologia_Class20041]
		[ontologia_Class64]
		[ontologia_Class20048])
	(Lactosa FALSE)
	(Nombre "Canelon de pollo en texturas con tartar de verduras de maria marte")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 9.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30026] of  Segundo

	(Celiaco TRUE)
	(Cocina Moderna)
	(Cubierto Tenedor)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class30]
		[ontologia_Class10018]
		[ontologia_Class8]
		[ontologia_Class30027]
		[ontologia_Class66]
		[ontologia_Class29]
		[ontologia_Class46]
		[ontologia_Class18]
		[ontologia_Class45]
		[ontologia_Class19]
		[ontologia_Class10030]
		[ontologia_Class20048]
		[ontologia_Class30028])
	(Lactosa TRUE)
	(Nombre "Conejo al ajillo con cigalas")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 16.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class30027] of  Ingrediente

	(Nombre "Conejo"))

([ontologia_Class30028] of  Ingrediente

	(Nombre "Cigala"))

([ontologia_Class31] of  Ingrediente

	(Nombre "Vino blanco"))

([ontologia_Class32] of  Ingrediente

	(Nombre "Almendras"))

([ontologia_Class33] of  Ingrediente

	(Nombre "Harina"))

([ontologia_Class34] of  Segundo

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pescado)
	(ingredientes
		[ontologia_Class35]
		[ontologia_Class36]
		[ontologia_Class31]
		[ontologia_Class30]
		[ontologia_Class33]
		[ontologia_Class8]
		[ontologia_Class26]
		[ontologia_Class4])
	(Lactosa TRUE)
	(Nombre "Bacalao a la llauna")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 11.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class35] of  Ingrediente

	(Nombre "Bacalao"))

([ontologia_Class36] of  Ingrediente

	(Nombre "Pimenton"))

([ontologia_Class38] of  Segundo

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Arroz)
	(ingredientes
		[ontologia_Class39]
		[ontologia_Class12]
		[ontologia_Class3]
		[ontologia_Class30]
		[ontologia_Class40]
		[ontologia_Class41]
		[ontologia_Class42]
		[ontologia_Class43]
		[ontologia_Class26]
		[ontologia_Class4]
		[ontologia_Class3]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Paella de marisco")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 15.5)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class39] of  Ingrediente

	(Nombre "Arroz"))

([ontologia_Class4] of  Ingrediente

	(Nombre "Aceite"))

([ontologia_Class40] of  Ingrediente

	(Nombre "Almejas"))

([ontologia_Class40003] of  Bebida

	(Nombre "Agua")
	(Precio+de+venta 2.5))

([ontologia_Class40004] of  Bebida

	(Nombre "CocaCola")
	(Precio+de+venta 3.0))

([ontologia_Class40005] of  Bebida

	(Nombre "Zumo")
	(Precio+de+venta 2.5))

([ontologia_Class41] of  Ingrediente

	(Nombre "Mejillones"))

([ontologia_Class42] of  Ingrediente

	(Nombre "Gamba"))

([ontologia_Class43] of  Ingrediente

	(Nombre "Sepia"))

([ontologia_Class44] of  Segundo

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Legumbres)
	(ingredientes
		[ontologia_Class45]
		[ontologia_Class46]
		[ontologia_Class4]
		[ontologia_Class18]
		[ontologia_Class47]
		[ontologia_Class30]
		[ontologia_Class3]
		[ontologia_Class26]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Butifarra con alubias")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 9.75)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class45] of  Ingrediente

	(Nombre "Puerro"))

([ontologia_Class46] of  Ingrediente

	(Nombre "Zanahoria"))

([ontologia_Class47] of  Ingrediente

	(Nombre "Alubias"))

([ontologia_Class48] of  Segundo

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Cuchara)
	(Ingrediente+principal Carne)
	(ingredientes
		[ontologia_Class49]
		[ontologia_Class50]
		[ontologia_Class51]
		[ontologia_Class52]
		[ontologia_Class53]
		[ontologia_Class54]
		[ontologia_Class55]
		[ontologia_Class56]
		[ontologia_Class57]
		[ontologia_Class19]
		[ontologia_Class29]
		[ontologia_Class30]
		[ontologia_Class26]
		[ontologia_Class46]
		[ontologia_Class45]
		[ontologia_Class53])
	(Lactosa TRUE)
	(Nombre "Escudella")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 10.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class49] of  Ingrediente

	(Nombre "Cordero"))

([ontologia_Class5] of  Ingrediente

	(Nombre "Jamon"))

([ontologia_Class50] of  Ingrediente

	(Nombre "Cerdo"))

([ontologia_Class51] of  Ingrediente

	(Nombre "Pollo"))

([ontologia_Class52] of  Ingrediente

	(Nombre "Patata"))

([ontologia_Class53] of  Ingrediente

	(Nombre "Nabo"))

([ontologia_Class54] of  Ingrediente

	(Nombre "Col"))

([ontologia_Class55] of  Ingrediente

	(Nombre "Apio"))

([ontologia_Class56] of  Ingrediente

	(Nombre "Garbanzos"))

([ontologia_Class57] of  Ingrediente

	(Nombre "Pinones"))

([ontologia_Class58] of  Primero%2FSegundo

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class59]
		[ontologia_Class3]
		[ontologia_Class30]
		[ontologia_Class4]
		[ontologia_Class2]
		[ontologia_Class32])
	(Lactosa TRUE)
	(Nombre "Calçots a la brasa")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 8.5)
	(temperatura caliente)
	(Temporada Invierno)
	(Vegetariano TRUE))

([ontologia_Class59] of  Ingrediente

	(Nombre "Calçots"))

([ontologia_Class6] of  Primero

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pan)
	(ingredientes
		[ontologia_Class2]
		[ontologia_Class5]
		[ontologia_Class4]
		[ontologia_Class3])
	(Lactosa TRUE)
	(Nombre "Pan con tomate y jamon")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 4.5)
	(temperatura frio)
	(Vegetariano FALSE))

([ontologia_Class60] of  Primero%2FSegundo

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Pasta)
	(ingredientes
		[ontologia_Class61]
		[ontologia_Class50]
		[ontologia_Class29]
		[ontologia_Class51]
		[ontologia_Class62]
		[ontologia_Class63]
		[ontologia_Class64]
		[ontologia_Class65]
		[ontologia_Class33]
		[ontologia_Class8]
		[ontologia_Class66])
	(Lactosa FALSE)
	(Nombre "Canelones a la catalana")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 6.0)
	(temperatura caliente)
	(Vegetariano FALSE))

([ontologia_Class61] of  Ingrediente

	(Nombre "Pasta"))

([ontologia_Class62] of  Ingrediente

	(Nombre "Queso"))

([ontologia_Class63] of  Ingrediente

	(Nombre "Leche"))

([ontologia_Class64] of  Ingrediente

	(Nombre "Mantequilla"))

([ontologia_Class65] of  Ingrediente

	(Nombre "Nuez moscada"))

([ontologia_Class66] of  Ingrediente

	(Nombre "Pimienta"))

([ontologia_Class67] of  Postre

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class63]
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class69]
		[ontologia_Class70]
		[ontologia_Class71]
		[ontologia_Class27])
	(Lactosa FALSE)
	(Nombre "Crema catalana")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 4.5)
	(temperatura caliente)
	(Vegetariano TRUE))

([ontologia_Class68] of  Ingrediente

	(Nombre "Azucar"))

([ontologia_Class69] of  Ingrediente

	(Nombre "Maicena"))

([ontologia_Class70] of  Ingrediente

	(Nombre "Naranja"))

([ontologia_Class71] of  Ingrediente

	(Nombre "Canela"))

([ontologia_Class72] of  Ingrediente

	(Nombre "Higos"))

([ontologia_Class73] of  Postre

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Cuchara)
	(Ingrediente+principal Lacteos)
	(ingredientes
		[ontologia_Class74]
		[ontologia_Class63]
		[ontologia_Class62]
		[ontologia_Class21]
		[ontologia_Class27])
	(Lactosa FALSE)
	(Nombre "Mel y mato")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 3.5)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class74] of  Ingrediente

	(Nombre "Miel"))

([ontologia_Class75] of  Postre

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Cuchara)
	(Ingrediente+principal FrutosSecos)
	(ingredientes
		[ontologia_Class76]
		[ontologia_Class77]
		[ontologia_Class78]
		[ontologia_Class79]
		[ontologia_Class74]
		[ontologia_Class32]
		[ontologia_Class57]
		[ontologia_Class72])
	(Lactosa TRUE)
	(Nombre "Musico")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 5.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class76] of  Ingrediente

	(Nombre "Avellanas"))

([ontologia_Class77] of  Ingrediente

	(Nombre "Nueces"))

([ontologia_Class78] of  Ingrediente

	(Nombre "Ciruela"))

([ontologia_Class79] of  Ingrediente

	(Nombre "Uvas"))

([ontologia_Class8] of  Ingrediente

	(Nombre "Sal"))

([ontologia_Class80] of  Postre

	(Celiaco FALSE)
	(Cocina Regional)
	(Cubierto Cuchara)
	(Ingrediente+principal FrutosSecos)
	(ingredientes
		[ontologia_Class81]
		[ontologia_Class32]
		[ontologia_Class33]
		[ontologia_Class19]
		[ontologia_Class68]
		[ontologia_Class25]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Carquinyolis")
	(pensado+para+poca+gente FALSE)
	(Precio+de+venta 6.0)
	(temperatura frio)
	(Vegetariano TRUE))

([ontologia_Class81] of  Ingrediente

	(Nombre "Levadura"))

([ontologia_Class9] of  Primero

	(Celiaco TRUE)
	(Cocina Regional)
	(Cubierto Tenedor)
	(Ingrediente+principal Vegetales)
	(ingredientes
		[ontologia_Class11]
		[ontologia_Class12]
		[ontologia_Class3]
		[ontologia_Class4]
		[ontologia_Class8])
	(Lactosa TRUE)
	(Nombre "Escalivada")
	(pensado+para+poca+gente TRUE)
	(Precio+de+venta 7.0)
	(temperatura frio)
	(Temporada Verano)
	(Vegetariano TRUE)))
	
;;Clases nuestras

;;; Modulos 

(defmodule MAIN (export ?ALL))

(defmodule recopilacion-datos
	(import MAIN ?ALL)
	(export ?ALL)
)


(defmodule procesado-datos
	(import MAIN ?ALL)
	(import recopilacion-datos deftemplate ?ALL)
	(export ?ALL)
)

(defmodule generacion-soluciones
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule imprimir-soluciones
	(import MAIN ?ALL)
	(export ?ALL)
)

;; FUNCIONES

;;; Funcion para hacer preguntas numeradas

(deffunction MAIN::pregunta-numerica (?pregunta)
	(printout t ?pregunta)
	(bind ?respuesta (read))
	(while (or (not (integerp ?respuesta)) (< ?respuesta 0)) do
		(printout t ?pregunta)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction MAIN::pregunta-numerica-rangos (?pregunta ?rinicio ?rfin)
	(format t "%s (De %d hasta %d) " ?pregunta ?rinicio ?rfin)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rinicio)(<= ?respuesta ?rfin))) do
		(format t "%s (De %d hasta %d) " ?pregunta ?rinicio ?rfin)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction MAIN::pregunta-numerada (?pregunta $?lista)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?lista) 
            (bind ?linea (format nil " %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-numerica-rangos "Elige una respuesta:" 1 (length$ ?lista)))
	(bind ?result (nth$ ?respuesta $?lista))
)


;; Template para los datos de la comida

(deftemplate MAIN::datos_comida

    (slot tipoEvento (type STRING)) ; Tipo del evento
    (slot muchosComensales (type INTEGER) (default -1)) ; A partir de 15 son muchos 
    (slot quiereVino (type INTEGER) (default -1)) ; El usuario quiere vino (1) o no (0)
    (slot esVegetariano (type INTEGER) (default -1)) ; El usuario es vegetariano (1) o no (0)
    (slot esCeliaco (type INTEGER) (default -1)) ; El usuario es celiaco (1) o no (0)
    (slot intoleranteLactosa (type INTEGER) (default -1)) ; El usuario quiere lactosa (1) o no (0)
    (slot precioMinimo (type INTEGER) (default -1)) ; El precio minimo del menu
    (slot precioMaximo (type INTEGER) (default -1)) ; El precio maximo del menu
    
    ;;(multislot ingredientesPrincipales (type SYMBOL) (allowed-values Carne Pescado Vegetales Pasta Arroz Pan Legumbres FrutosSecos Lacteos Marisco) (default Undef)) 
)


;; REGLAS 

(defrule MAIN::primera-regla "Regla inicial"
	(declare (salience 10))
	=>
	(printout t"-----------------------------------------------------" crlf)
  	(printout t"          Recomendacion de Menu          " crlf)
	(printout t"-----------------------------------------------------" crlf)
  	(printout t crlf)  	
	(printout t"¡Bienvenido al consejero de Menu. A continuacion se realizaran una serie de preguntas con las cuales se le recomendara su menu ideal." crlf)
	(printout t crlf)
	
	(focus recopilacion-datos)
)	

(defrule recopilacion-datos:tipo-evento "Establece el tipo del evento"
	(not (datos_comida))
	=>
	(bind ?eventos (create$ "Congreso cena." "Congreso comida." "Aniversario familiar." "Bautizo familiar." "Boda familiar." "Comunion familiar." "Despedida familiar."))
	(bind ?respuesta (pregunta-numerada "Inserte el tipo de evento a realizar: " ?eventos))
    (assert (datos_comida (tipoEvento ?respuesta)))
    (printout t crlf)
)    
	
(defrule recopilacion-datos:numero-comensales "Establece el numero de comensales"
	?d <- (datos_comida (muchosComensales ?numCom))
	(test (< ?numCom 0))
	=>
	(bind ?numCom (pregunta-numerica "¿Cuantos comensales asistiran al evento? :"))	
	(modify ?d (muchosComensales ?numCom))
	(printout t crlf)
)

(defrule recopilacion-datos:numero-comensales "Establece el numero de comensales"
	?d <- (datos_comida (ingredientesPrinciaples ?$ingr))
	(test (< ?numCom 0))
	=>
	(bind ?numCom (pregunta-numerica "¿Cuantos comensales asistiran al evento? :"))	
	(modify ?d (muchosComensales ?numCom))
	(printout t crlf)
)
	
