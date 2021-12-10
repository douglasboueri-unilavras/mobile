import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

void main() async{
  var url =
  Uri.http('192.168.25.48:5000', '/produto/Cadastrar');



  // Await the http get response, then decode the json-formatted response.
  // var response = await http.get(Uri.parse('http://192.168.25.48:5000/Produto/Listar'));
  // print(response);

  var resposta = await http.post(url, body: {
    "id": '',
    "nome": 'biscoito mabel',
    "preço": '4.99',
  });

  // print(response.statusCode);
  // print(url);
  var respostaConvertida = convert.jsonDecode(resposta.body) as List<dynamic>;
  Map teste = convert.jsonDecode(respostaConvertida[0]);

  print(url);
}
