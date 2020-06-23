import 'package:flutter/material.dart';
import 'package:hurb/widgets/explorer_item.dart';
import 'package:toggle_bar/toggle_bar.dart';

class ExplorerScreen extends StatefulWidget {
  @override
  _ExplorerScreenState createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  final List<String> labels = ["Hoteis", "Pacotes", "Atividades"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text(
              "Pesquisar",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              textAlign: TextAlign.left,
            ),
            ToggleBar(
              labels: labels,
              backgroundColor: Colors.transparent,
              selectedTabColor: Colors.lightBlue,
              onSelectionUpdated: (index) =>
                  setState(() => currentIndex = index),
            ),
            SizedBox(
              height: 300,
            ),
            ExplorerItem()
          ],
        ),
      ),
    );
  }
}
