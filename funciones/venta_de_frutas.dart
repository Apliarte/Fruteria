/* Venta de Frutas

Solicitar Pedido: 
El programa debe pedir al usuario que ingrese el nombre de una fruta
 y la cantidad que desea comprar.

Verificar Disponibilidad: 
Usa una estructura if 
para verificar si hay suficiente cantidad de esa fruta 
en el inventario. 
Si no hay suficiente, 
muestra un mensaje.

Calcular Total: 
Si hay suficiente cantidad, calcula el total a pagar (cantidad * precio) 
y muestra el total. Usa casting si es necesario para asegurar que el cálculo sea correcto.

Actualizar Inventario: 
Si la venta es exitosa, actualiza la cantidad de la fruta en el inventario.
 */

import 'dart:io';

import '../listas_y_mapas/lista_inventario.dart';
import '../main.dart';
import 'generales.dart';
import 'menu_informes.dart';
import 'menu_nuevo_cliente.dart';

ventaDeFruta() {
  String fruta;
  var listaNombre = [];
  num? cantidad;

  do {
    //mostar una lista de frutas
    print("${'Articulos'.padRight(15)}Cantidad en Unidades\n");

    inventario.forEach((element) {
      print('${element[0].toString().padRight(20)} ${element[2]}');
    });

    //pedir al usuario que ingrese el nombre de una fruta
    print('\nIngresa una fruta que desea comprar o q para salir');
    fruta = stdin.readLineSync() ?? '';
    if (fruta == 'q') {
      break;
    }
    listaNombre =
        inventario.where((item) => item[0] == fruta).toList(); // De Gordon

    if (listaNombre.isEmpty) {
      print('\nHa habido un error....');
    }

    // print('\naqui se ven los precios  y cantidad de $listaNombre'); // De Gordon
  } while (listaNombre.isEmpty);
  if (fruta == 'q') {
    return fruta;
  }
  var listaFruta = listaNombre[0];
  // la cantidad que desea comprar
  do {
    fruta = listaFruta[0];
    print('\nCuanta cantidad quiere de $fruta $listaFruta');
    cantidad = pedirNumero(entero: true);
    // comprobar si hay disponivilidad

    if (cantidad == null) {
      return;
    }
    if (cantidad > (listaFruta[2])) {
      print('Solo queda ${listaFruta[2]} elija otra cantidad');
    }
  } while (cantidad > listaFruta[2]);
  // calcula el total a pagar (cantidad * precio)
  double precio = listaFruta[1];
  total += cantidad * precio;
  totalCliente += cantidad * precio;
  print('Gastó en $fruta ${cantidad * precio}€');
  //Actualizar Inventario:
//Si la venta es exitosa, actualiza la cantidad de la fruta en el inventario.

  inventario.remove(listaFruta);
  listaFruta[2] -= cantidad;
  inventario.add(listaFruta);

  // actualizar informe

  var listaInforme = informe.where((item) => item[0] == fruta).toList();

  // De Gordon
  if (listaInforme.isEmpty) {
    //? listaFruta[2] = cantidad;
    //? informe.add(listaFruta);---------------------------------
    informe.add([
      fruta,
      precio,
      cantidad,
    ]);
  } else {
    listaInforme = listaInforme[0];
    listaInforme[2] += cantidad;

    informe.remove(listaInforme);
    informe.add(listaInforme);
  }
}
