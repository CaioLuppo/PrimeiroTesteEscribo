import 'dart:io';

void main(List<String> args) {

  mostraCabecalho();

  while (true) {
    try {
      // Recebe o input do usuário.
      stdout.write("\nDigite um número para calcular (ou \"sair\"): ");
      String input = stdin.readLineSync()!.replaceAll(" ", "").toLowerCase();

      // Sai do programa.
      if (input == "sair"){
        print("\n\x1B[33mObrigado pela oportunidade! 😉\x1B[0m");
        return print("\n\x1B[31mSaindo...\x1B[0m\n");
      }

      // Faz e mostra o resultado em verde.
      print("\n\x1B[32mO resultado é: ${somatorio(int.parse(input))} 😊\x1B[0m");

    } catch (error) {
      // Caso o valor não esteja correto, retorna erro em vermelho.
      print("\n\x1B[31mInforme um número inteiro ou \"sair\"!\x1B[0m");

    }
  }

}

int somatorio(int valorInformado) {
  // Guarda o total das somas.
  int total = 0;

  // Verifica se o resto da divisão dá 0 e então soma, caso seja.
  for (int numero = valorInformado - 1; numero > 0; numero--) {
    if (numero % 3 == 0 || numero % 5 == 0) {
      total += numero;
    }
  }
  return total;
}

void mostraCabecalho(){

  print(
    "\n*******************************************************************"
    "\n* Somatório dos valores inteiros inferiores divisíveis por 3 e 5! *"
    "\n*                                                                 *"
    "\n*                                                  By: Caio Luppo *"
    "\n*******************************************************************"
  );

}
