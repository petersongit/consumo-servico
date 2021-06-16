import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BodyBuscarCEP extends StatefulWidget {
  const BodyBuscarCEP({Key key}) : super(key: key);

  @override
  _BodyBuscarCEPState createState() => _BodyBuscarCEPState();
}

class _BodyBuscarCEPState extends State<BodyBuscarCEP> {
  String _resultado = '';
  TextEditingController _cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: _cepController,
            decoration: InputDecoration(
                labelText: 'Digite o cep',
                labelStyle: TextStyle(fontSize: 24),
                //hintStyle: TextStyle(color: Colors.green),
                // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
            onPressed: _buscarCEP,
            child: Text(
              'Clique aqui',
              style: TextStyle(fontSize: 24),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            _resultado,
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }

  void _buscarCEP() async {
    Uri url;
    http.Response response;
    Map<String, dynamic> retorno;

    String _logradouro;
    String _localidade;
    String _uf;

    url = Uri.parse('https://viacep.com.br/ws/${_cepController.text}/json/');
    response = await http.get(url);
    retorno = json.decode(response.body);

    _logradouro = retorno['logradouro'];
    _localidade = retorno['localidade'];
    _uf = retorno['uf'];

    setState(() {
      this._resultado = '$_logradouro, $_localidade, $_uf';
    });

    //print('Status: ${response.statusCode}');
    //print('Body: ${response.body}');
    print(retorno['logradouro']);
    print(retorno['localidade']);
    print(retorno['localidade']);
  }
}
