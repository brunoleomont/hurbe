import 'package:flutter/material.dart';
import 'package:hurb/widgets/list_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Perfil',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person_pin,
                          size: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Bruno Leonardo Monteiro', style: TextStyle(fontSize: 20.0), textAlign: TextAlign.left, overflow: TextOverflow.fade),
                            Text('brunoleomont@gmail.com'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    ListMenuItem("Viagens", Icons.card_travel),
                    ListMenuItem("Créditos", Icons.card_giftcard),
                    ListMenuItem("Favoritos", Icons.favorite_border),
                    ListMenuItem("Últimos Vistos", Icons.remove_red_eye),
                    ListMenuItem("Informações pessoais", Icons.account_box),
                    ListMenuItem("Sair", Icons.exit_to_app)
                  ],
                ))
          ],
        ));
  }
}
