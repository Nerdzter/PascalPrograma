program Calculadora;

uses crt; { Para usar gotoxy e outras funções da tela }

var
  opcao: integer;
  num1, num2: real;
  resultado: real;
  continuar: char;

procedure MostrarMenuPrincipal;
begin
  clrscr; { Limpa a tela }
  gotoxy(10, 5); { Posiciona o cursor }
  writeln('                         BEM VINDO A MINHA CALCULADORA');
  writeln('                                                •-•');
  writeln;
  writeln('  (1) - Soma                      (4) - Divisao                    (7) - Informacao');
  writeln('  (2) - Subtracao                 (5) - Potencia                   (0) - Fechar');
  writeln('  (3) - Multiplicacao             (6) - Raiz Quadrada');
  writeln;
  write('Escolha uma opcao (0-7): ');
end;

procedure MostrarInformacao;
begin
  clrscr;
  gotoxy(10, 5);
  writeln('                         INFORMAÇÕES');
  writeln;
  writeln('Esta é uma calculadora simples desenvolvida em Pascal.');
  writeln('Foi desenvolvida por Nayderson, no curso de Desenvolvimento de Sistemas | Senac - MG');
  writeln('Você pode realizar as seguintes operações:');
  writeln('1. Soma');
  writeln('2. Subtracao');
  writeln('3. Multiplicacao');
  writeln('4. Divisao');
  writeln('5. Potencia');
  writeln('6. Raiz Quadrada');
  writeln('7. Informacoes sobre a calculadora');
  writeln('0. Fechar o programa');
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure MostrarMenuOperacao(nome: string);
begin
  clrscr;
  gotoxy(10, 5);
  writeln('                         ', nome);
  writeln;
  writeln('Digite os valores necessários:');
  writeln;
end;

procedure Soma;
begin
  MostrarMenuOperacao('SOMA');
  write('Digite o primeiro numero: ');
  readln(num1);
  write('Digite o segundo numero: ');
  readln(num2);
  resultado := num1 + num2;
  writeln('Resultado: ', resultado:0:2);
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure Subtracao;
begin
  MostrarMenuOperacao('SUBTRACAO');
  write('Digite o primeiro numero: ');
  readln(num1);
  write('Digite o segundo numero: ');
  readln(num2);
  resultado := num1 - num2;
  writeln('Resultado: ', resultado:0:2);
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure Multiplicacao;
begin
  MostrarMenuOperacao('MULTIPLICACAO');
  write('Digite o primeiro numero: ');
  readln(num1);
  write('Digite o segundo numero: ');
  readln(num2);
  resultado := num1 * num2;
  writeln('Resultado: ', resultado:0:2);
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure Divisao;
begin
  MostrarMenuOperacao('DIVISAO');
  write('Digite o primeiro numero: ');
  readln(num1);
  write('Digite o segundo numero: ');
  readln(num2);
  if num2 = 0 then
    writeln('Erro: Divisao por zero!')
  else
  begin
    resultado := num1 / num2;
    writeln('Resultado: ', resultado:0:2);
  end;
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure Potencia;
begin
  MostrarMenuOperacao('POTENCIA');
  write('Digite a base: ');
  readln(num1);
  write('Digite o expoente: ');
  readln(num2);
  resultado := exp(num2 * ln(num1)); { Calcula num1^num2 usando logaritmo natural }
  writeln('Resultado: ', resultado:0:2);
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

procedure RaizQuadrada;
begin
  MostrarMenuOperacao('RAIZ QUADRADA');
  write('Digite o numero: ');
  readln(num1);
  if num1 < 0 then
    writeln('Erro: Numero negativo!')
  else
  begin
    resultado := sqrt(num1); { Calcula a raiz quadrada }
    writeln('Resultado: ', resultado:0:2);
  end;
  writeln;
  writeln('Pressione Enter para voltar ao menu principal.');
  readln;
end;

begin
  continuar := 'S';
  while continuar = 'S' do
  begin
    MostrarMenuPrincipal;
    readln(opcao);
    case opcao of
      0: begin
           writeln('Fechando o programa...');
           continuar := 'N'; { Define a condição para sair do loop }
         end;
      1: Soma;
      2: Subtracao;
      3: Multiplicacao;
      4: Divisao;
      5: Potencia;
      6: RaizQuadrada;
      7: MostrarInformacao;
    else
    begin
      writeln('Opcao invalida! Tente novamente.');
      writeln('Pressione Enter para voltar ao menu principal.');
      readln;
    end;
    end;
    if opcao <> 0 then
    begin
      clrscr; { Limpa a tela antes de mostrar o menu principal novamente }
    end;
  end;
end.

