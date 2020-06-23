import 'package:flutter/material.dart';
import 'package:hurb/widgets/list_menu_item.dart';

class MoreOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Mais',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Atendimento',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.fade),
                            Text('24 horas, 7 dias por semana'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    ListMenuItem("Telefone", Icons.phone),
                    ListMenuItem(
                        "Atendimento Online", Icons.chat_bubble_outline),
                    ListMenuItem("E-mail", Icons.mail_outline),
                    SizedBox(height: 15.0),
                    Row(children: <Widget>[
                      Text('Social',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.fade),
                    ]),
                    SizedBox(height: 15.0),
                    ListMenuItem("Avalie nosso app", Icons.star),
                    ListMenuItem(
                        "Blog do viajante - GoHurb", Icons.account_box),
                    ListMenuItem("Página do Facebook", Icons.web),
                    ListMenuItem("Página do Instagram", Icons.web),
                    SizedBox(height: 15.0),
                    Row(children: <Widget>[
                      Text('Sobre',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.fade),
                    ]),
                    SizedBox(height: 15.0),
                    ListMenuItem("Termos de Uso", Icons.library_books),
                    ListMenuItem("Políticas de Privacidade", Icons.lock),
                    ListMenuItem("Licenças Open Source", Icons.pages),
                    SizedBox(height: 15.0),
                    Row(children: <Widget>[
                      Text('Configuraçoes',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.fade),
                    ]),
                    SizedBox(height: 15.0),
                    ListMenuItem(
                        "Regiao, idioma e moeda", Icons.settings),
                    SizedBox(height: 15.0),
                    FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Hurb 2020 - Versao 1.0.1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 0.5),
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                ))
          ],
        ));
  }
}
