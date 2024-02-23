import 'funciones/menu_informes.dart';
import 'funciones/menu_principal.dart';

double total = 0;
main() {
  print("\nBienvenido a Fruteria ApliArte\n");
  menuPrincipal();

  print('Gastó un total de $total€');
  menuInformes();
  print(' Fin del programa');
}
