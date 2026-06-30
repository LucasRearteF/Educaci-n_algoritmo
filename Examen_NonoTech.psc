Algoritmo NonoTech
	
	Definir nombre Como Cadena;
	Definir precio, subtotal, descCategoria, montoPago, envio, total Como Real;
	Definir cantidad, categoria, pago Como Entero;
	
	Escribir "Bienvenido a nonotech";
	Escribir "Ingrese el nombre del cliente:";
	Leer nombre;
	
	Escribir "Ingrese el precio unitario del producto:";
	Leer precio;
	
	Escribir "Ingrese la cantidad de productos:";
	Leer cantidad;
	
	Escribir "Ingrese la categoría del producto:";
	Escribir "1 - Hardware";
	Escribir "2 - Periféricos";
	Escribir "3 - Insumos";
	Leer categoria;
	
	Escribir "Ingrese el método de pago:";
	Escribir "1 - Efectivo";
	Escribir "2 - Tarjeta";
	Leer pago;
	
	
	subtotal <- precio * cantidad;
	descCategoria <- 0;
	montoPago <- 0;
	envio <- 0;
	
	
	Segun categoria Hacer
		
		1:
			Si subtotal > 50000 Entonces
				descCategoria <- subtotal * 0.15;
			SiNo
				descCategoria <- subtotal * 0.05;
			FinSi;
			
		2:
			descCategoria <- subtotal * 0.10;
			
		3:
			Si cantidad > 10 Entonces
				descCategoria <- subtotal * 0.05;
			SiNo
				descCategoria <- 0;
			FinSi;
			
		De Otro Modo:
			Escribir "Error: Categoría inválida.";
			descCategoria <- 0;
			
	FinSegun;
	
	total <- subtotal - descCategoria;
	
	
	Si pago = 1 Entonces
		montoPago <- total * 0.10;
		total <- total - montoPago;
	SiNo
		Si pago = 2 Entonces
			montoPago <- total * 0.15;
			total <- total + montoPago;
		SiNo
			Escribir "Error: Método de pago inválido.";
			montoPago <- 0;
		FinSi;
	FinSi;
	
	
	Si total < 20000 Entonces
		envio <- 2500;
		total <- total + envio;
	FinSi;
	
	
	Escribir " ";
	Escribir " TICKET DE COMPRA ";
	Escribir "Cliente: ", nombre;
	Escribir "Subtotal inicial: $", subtotal;
	Escribir "Descuento por categoría: $", descCategoria;
	
	Si pago = 1 Entonces
		Escribir "Descuento por pago en efectivo: $", montoPago;
	FinSi;
	
	Si pago = 2 Entonces
		Escribir "Recargo por pago con tarjeta: $", montoPago;
	FinSi;
	
	Escribir "Costo de envío: $", envio;
	Escribir "TOTAL FINAL A PAGAR: $", total;
	Escribir " ";
	
FinAlgoritmo
