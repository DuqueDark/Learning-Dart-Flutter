import 'dart:_internal';
import 'dart:io';

main() {
  var loop = true;
  while (loop) {
    var funcao = selectFunction();

    switch (funcao) {
      case 4:
        loop = false;
        break;
      default:
        print("Esse comando não esta disponivel!");
        break;
    }
  }
}

int selectFunction() {
  print(" Escolha um a uma função para realizar\n" +
      "1 - Cadastrar Cliente\n" +
      "2 - Editar Cliente\n" +
      "3 - Remover Cliente\n" +
      "4 - Sair\n");

  var aux = stdin.readLineSync();

  if (aux == null) {
    aux = "5";
  }

  var funcao = int.parse(aux);

  return funcao;
}
