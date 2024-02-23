import 'venta_de_frutas.dart';

int cliente = 0;
double totalCliente = 0;
menuNuevoCliente() {
  totalCliente = 0;
  String? texto;
  cliente += 1;
  do {
    texto = ventaDeFruta();
  } while (texto != 'q');

  print('Cobrar al clienes $totalCliente€ Y dar los buenos dias');
}
