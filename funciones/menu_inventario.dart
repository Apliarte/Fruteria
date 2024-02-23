import 'dart:io';

import 'generales.dart';

menuInventario() {
  String opcionInventario;
  String eligeFruta;
  List listaInventario;
  do {
    mostrarMenu('inventario');
    opcionInventario = stdin.readLineSync() ?? '';
/*     if (!opciones_validas('principal').contains(opcionInventario)) {
      print('\nPor favor, seleccione una opción válida.\n');
    } */
    switch (opcionInventario) {
      case "1":
        /* Mostrar Inventario: 
Crea una función que muestre 
todas las frutas disponibles, 
sus cantidades y precios. */
        muestraInventario();

        break;
      case "2":
        //  Gestionar cantidades',
        print('has elegido Gestionar cantidades');
        listaInventario = pedirFruta();
        print('La cantidad actual es ${listaInventario[2]}');
        print('Ingrese la nueva cantidad');
        print(
            ' Estos son los cambios ${cambiarValorLista(listaInventario, 2)}');
        print('Fin Gestion cantidades ');
        break;
      case "3":
        //  Gestionar precios',
        print('has elegido Gestionar precios');
        listaInventario = pedirFruta();
        print('El precio actual es ${listaInventario[1]}');
        print('Ingrese el nuevo precio');
        print(
            ' Estos son los cambios ${cambiarValorLista(listaInventario, 1)}');
        print('Fin Gestion precios ');
        break;

      case "0":
        print('has elegido salir del menú Gestion de inventario');

      default:
        print("Esta opción no es válida");
        break;
    }
  } while (opcionInventario != '0');
}
