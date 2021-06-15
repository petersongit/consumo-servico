import 'package:flutter/material.dart';

class BodyBuscarCEP extends StatefulWidget {
  const BodyBuscarCEP({Key key}) : super(key: key);

  @override
  _BodyBuscarCEPState createState() => _BodyBuscarCEPState();
}

class _BodyBuscarCEPState extends State<BodyBuscarCEP> {
  String url = 'https://viacep.com.br/ws/08560200/json/';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          RaisedButton(
            onPressed: _buscarCEP,
            child: Text('Clique aqui'),
          )
        ],
      ),
    );
  }

  void _buscarCEP() {
    
  }
}
