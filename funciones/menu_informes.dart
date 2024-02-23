/* Ejempo de informe:
Se ha vendido lo siguiente:
 - 3 peras a 0,05€ lo que hace un total de 0,15€
 - 2 manzanas a 1,00€ lo que hace un total de 2,00€
 En total se ha vendido hoy 2,15€
 El inentario restante es el siguiente:
 - Quedan 3 uvas
 - Quedan 7 limones
 - En total quedan 10 productos por vender */
import '../listas_y_mapas/lista_inventario.dart';
import '../main.dart';
import 'menu_nuevo_cliente.dart';

List informe = [];
menuInformes() {
  String fruVendidas = '';
  int totalInventario;
  int restaInventario;
  int uniInventario = 0;
  int uniVendidas = 0;
  int clienInforme = cliente;
  print('\nInforme de ventas:\nSe ha vendido lo siguiente:');
  informe.forEach(
    (element) {
      uniVendidas += element[2] as int;
      fruVendidas += '${element[0].toString()}, ';
    },
  );
  inventario.forEach((element) {
    uniInventario += element[2] as int;
  });

  totalInventario = uniInventario + uniVendidas;

  print('''Informe del dia: 
  Hemos tenido $clienInforme CLientes
se han vendido $fruVendidas 
se han vendido $uniVendidas productos
Ahora quedan $uniInventario productos por vender de $totalInventario, que habian.
y Hemos ganado un total de $total€''');
}
