import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final TextStyle dropdownMenuLabel =
      TextStyle(color: Colors.black, fontSize: 22);
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 24);
  final List<String> optionsRoom = [
    '1 Quarto',
    '2 Quartos',
    '3 Quartos',
    '4 Quartos'
  ];
  final List<String> optionsPeople = [
    '1 Adulto',
    '2 Adultos',
    '3 Adultos',
    '4 Adultos'
  ];
  final List<String> optionsChildren = [
    'Nenhuma',
    '1 Criança',
    '2 Crianças',
    '3 Crianças',
    '4 Crianças'
  ];
  int selectedRoomIndex = 0;
  int selectedPeopleIndex = 0;
  int selectedChildrenIndex = 0;
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
                        'Pesquisar por hotéis',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        child: Column(
                      children: <Widget>[
                        TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.pin_drop,
                                  color: Colors.black,
                                ),
                                hintText: "Local de destino",
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 20))),
                        SizedBox(height: 20),
                        TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.black,
                                ),
                                hintText: "Entrada",
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 20))),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, right: 10),
                              child: Icon(
                                Icons.vpn_key
                              ),
                            ),
                            PopupMenuButton(
                                onSelected: (index) {
                                  setState(() {
                                    selectedRoomIndex = index;
                                  });
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      optionsRoom[selectedRoomIndex],
                                      style: dropdownMenuLabel,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuItem<int>>[
                                      PopupMenuItem(
                                        child: Text(optionsRoom[0],
                                            style: dropdownMenuItem),
                                        value: 0,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsRoom[1],
                                            style: dropdownMenuItem),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsRoom[2],
                                            style: dropdownMenuItem),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsRoom[3],
                                            style: dropdownMenuItem),
                                        value: 3,
                                      ),
                                    ]),
                          ],
                        ),
                                SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, right: 10),
                              child: Icon(
                                Icons.people_outline
                              ),
                            ),
                            PopupMenuButton(
                                onSelected: (index) {
                                  setState(() {
                                    selectedPeopleIndex = index;
                                  });
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      optionsPeople[selectedPeopleIndex],
                                      style: dropdownMenuLabel,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuItem<int>>[
                                      PopupMenuItem(
                                        child: Text(optionsPeople[0],
                                            style: dropdownMenuItem),
                                        value: 0,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsPeople[1],
                                            style: dropdownMenuItem),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsPeople[2],
                                            style: dropdownMenuItem),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsPeople[3],
                                            style: dropdownMenuItem),
                                        value: 3,
                                      ),
                                    ]),
                          ],
                        ),
                                SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, right: 10),
                              child: Icon(
                                Icons.child_care
                              ),
                            ),
                            PopupMenuButton(
                                onSelected: (index) {
                                  setState(() {
                                    selectedChildrenIndex = index;
                                  });
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      optionsChildren[selectedChildrenIndex],
                                      style: dropdownMenuLabel,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuItem<int>>[
                                      PopupMenuItem(
                                        child: Text(optionsChildren[0],
                                            style: dropdownMenuItem),
                                        value: 0,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsChildren[1],
                                            style: dropdownMenuItem),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsChildren[2],
                                            style: dropdownMenuItem),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsChildren[3],
                                            style: dropdownMenuItem),
                                        value: 3,
                                      ),
                                      PopupMenuItem(
                                        child: Text(optionsChildren[4],
                                            style: dropdownMenuItem),
                                        value: 4,
                                      ),
                                    ]),
                          ],
                        ),
                        SizedBox(height: 20),
                        FlatButton(
                            onPressed: () {},
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(247, 64, 106, 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                "Pesquisar por hotéis",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0.5),
                              ),
                            )),
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
