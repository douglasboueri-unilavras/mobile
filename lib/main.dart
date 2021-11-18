import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Cadastro de Produtos'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Column(children: [
          TextFormField(
            initialValue: 'Digite o nome do produto:',
            decoration: InputDecoration(
              labelText: 'Nome do produto',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Digite a quantidade do produto:',
            decoration: InputDecoration(
              labelText: 'Quantidade',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Digite a data de validade:',
            decoration: InputDecoration(
              labelText: 'Data de Validade',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Digite o codigo do produto',
            decoration: InputDecoration(
              labelText: 'Categoria',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Lata',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
                ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: true,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Pet ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Plástico ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Papelão ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Gluten ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage2(title: "Cadastro de produtos")),
                );
              },
              child: Text("Salvar"))
        ]),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  final String title;

  const MyHomePage2({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Column(children: [
          TextFormField(
            initialValue: 'Digite o nome:',
            decoration: InputDecoration(
              labelText: 'Nome',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Digite o código:',
            decoration: InputDecoration(
              labelText: 'Código',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Digite o tipo:',
            decoration: InputDecoration(
              labelText: 'Tipo',
              errorText: '',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                tristate: true,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Congelado ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Refrigerado',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Row(
            children: [
              Checkbox(
                tristate: false,
                value: false,
                activeColor: Color(0xFF6200EE), onChanged: (bool? value) {  },
              ),
              Text(
                'Local Seco',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Salvar"))
        ]),
      ),
    );
  }
}
