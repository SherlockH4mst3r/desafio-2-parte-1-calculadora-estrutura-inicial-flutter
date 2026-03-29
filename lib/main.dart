import 'package:flutter/material.dart';

//TODO - 1: Adicione uma tela em branco (Scaffold) e defina a cor de fundo para
//'balck12, ou seja criativo e escolha sua própria cor'

//TODO - 2: Crie uma appBar para o aplicativo, como título: 'Calculadora', cor
//de fundo: 'black, ou seja criativo e escolha sua própria cor'

//TODO - 3: Crie um corpo para o app Utilizando o Widget Column. Dentro dessa
//coluna inclua um container que temporariamente servirá como nosso display.
//Altere a propriedade color desse container para: 'white', dê um espaçamento
//nas margens de: '15'. O width deve ser: '400' e o height: '120'. Exiba o texto
// 'visor' no centro do container, o tamanho da fonte deve ser: '50'.

//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez
//receberá vários rows, que por sua vez receberão vários raisedbuttons para
//criar os botões da nossa calculadora. A calculadora deve ficar com o visual
//similar ao da imagem apresentada em:
//https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing.
//Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e
//'RaisedButton'; As cores podem ser diferentes para os botões, fica a seu
//critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic visor = '';

  exibirVisor(dynamic data) {
    if (data is int || data is double) {
      visor = 'Número $data';
    } else {
      visor = data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        appBar: AppBar(
          title: Text(
            'Calculadora',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.white70,
                width: 400,
                height: 120,
                child: Text(
                  visor,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50),
                ),
              ),

              Container(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Limpar');
                                  });
                                },
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                    color: Colors.blue[600],
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Deletar');
                                  });
                                },
                                child: Text(
                                  'DEL',
                                  style: TextStyle(
                                    color: Colors.blue[600],
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Porcentagem');
                                  });
                                },
                                child: Text(
                                  '%',
                                  style: TextStyle(
                                    color: Colors.blue[600],
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Dividir');
                                  });
                                },
                                child: Text(
                                  '/',
                                  style: TextStyle(
                                    color: Colors.blue[600],
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(7);
                                  });
                                },
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(8);
                                  });
                                },
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(9);
                                  });
                                },
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Multiplicar');
                                  });
                                },
                                child: Text(
                                  '*',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[600],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(4);
                                  });
                                },
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(5);
                                  });
                                },
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(6);
                                  });
                                },
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Adicionar');
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[600],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(1);
                                  });
                                },
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(2);
                                  });
                                },
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(3);
                                  });
                                },
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Subtrair');
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[600],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 8,
                          children: [
                            Expanded(
                              flex: 2,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor(0);
                                  });
                                },
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('.');
                                  });
                                },
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    exibirVisor('Resultado');
                                  });
                                },
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[600],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
