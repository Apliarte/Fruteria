import 'dart:io';

import 'generales.dart';
import 'menu_informes.dart';
import 'menu_inventario.dart';
import 'menu_nuevo_cliente.dart';

menuPrincipal() {
  String opcion;
  do {
    mostrarMenu('principal');

    opcion = stdin.readLineSync() ?? '';
    /*   if (!opciones_validas('principal').contains(opcion)) {
      print('Por favor, seleccione una opción válida.');
    } */
    // Ya tengo una opción válida
    switch (opcion) {
      case "1":
        print('Ha seleccionado el Gestion inventario');
        menuInventario();

        /* Mostrar Inventario: 
Crea una función que muestre 
todas las frutas disponibles, 
sus cantidades y precios. */
        break;
      case "2":
        print('Ha seleccionado el menu Nuevo Cliente');
        menuNuevoCliente();
        //Solicitar Pedido:
//El programa debe pedir al usuario
//que ingrese el nombre de una fruta
//y la cantidad que desea comprar.
        break;
      case "3":
        print('Ha seleccionado el menu Informes');

        menuInformes();

        break;
      case "0":
        print('Ha seleccionado Salir');

      default:
        print("Esta opción no es válida\n");
        break;
    }
  } while (opcion != "0");
}
