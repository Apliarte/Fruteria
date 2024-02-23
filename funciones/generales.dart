import 'dart:io';

import '../listas_y_mapas/lista_inventario.dart';
import '../listas_y_mapas/mapa_menus.dart';

void mostrarMenu(String nombre) {
  for (String opcion in listaMenus[nombre]!.keys) {
    print("${opcion} ${listaMenus[nombre]![opcion]}");
  }
}

void muestraInventario() {
  print('Lista todo el inventario');
  print("${'Articulos'.padRight(15)}Precio y Cantidad");
  inventario.forEach((element) {
    print(
        '${element[0].toString().padRight(15)} a ${element[1]}€  ${element[2]} ');
  });
}

List<String> opciones_validas(String nombre) {
  return listaMenus[nombre]!.keys.toList();
}

pedirFruta() {
  List? listaFruta;
  String fruta;
  muestraInventario();

  do {
    print('Seleccione una fruta o \'q\' para salir ');
    fruta = stdin.readLineSync() ?? '';
    if (fruta == 'q') {
      break;
    }

    listaFruta = inventario.where((element) => element[0] == fruta).toList();

    if (listaFruta.isEmpty) {
      print('\nHubo un error...');
    } else {
      listaFruta = listaFruta[0];
    }
  } while (listaFruta!.isEmpty);
  if (fruta == 'q') {
    return;
  }

  return listaFruta;
}

cambiarValorLista(lista, int i) {
  num? numCambio;
  bool esEntero = true;
  if (lista[i].runtimeType == int) {
    esEntero = true;
  } else {
    esEntero = false;
  }

  numCambio = pedirNumero(entero: esEntero);
  if (numCambio == null) {
    return null;
  }
  lista[i] = numCambio;

  return lista;
}

num? pedirNumero({bool entero = false}) {
  String texto;

  while (true) {
    print(
        'Introduce un número${entero ? ' entero' : ''} mayor o igual que 0 o \'q\' para salir ');
    texto = stdin.readLineSync() ?? '';

    if (texto == 'q') {
      print('Saliendo....');

      return null;
    }
    num? numero = entero ? int.tryParse(texto) : double.tryParse(texto);
    if (numero == null || numero < 0) {
      print('Escribe un numero correcto....');
    } else {
      return numero;
    }
  }
}
