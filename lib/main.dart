import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Vita Health';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              appTitle,
              style: TextStyle(
                fontFamily: 'package:datafiles/fontes/MontserratAlternates-Medium.ttf',
                fontSize: 16,
              )
              
            ),
          ),
          body: const MyCustomForm()),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username',
            ),
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Password',
            ),
            validator: (value) {
              if (value == null) {
                return "Por favor preencha o campo";
              }
            },
          ),
        ),
      ],
    );
  }
}
