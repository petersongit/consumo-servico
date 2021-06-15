import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BodyBuscarCEP extends StatefulWidget {
  const BodyBuscarCEP({Key key}) : super(key: key);

  @override
  _BodyBuscarCEPState createState() => _BodyBuscarCEPState();
}

class _BodyBuscarCEPState extends State<BodyBuscarCEP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _buscarCEP,
            child: Text('Clique aqui'),
          )
        ],
      ),
    );
  }

  void _buscarCEP() async {
    String cep = '08560200';

    Uri url  = Uri.parse('https://viacep.com.br/ws/${cep}/json/');
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno;

    retorno = json.decode(response.body);

    //print('Status: ${response.statusCode}');
    //print('Body: ${response.body}');
    print(retorno['logradouro']);
    print(retorno['localidade']);
    print(retorno['uf']);

  }
}
