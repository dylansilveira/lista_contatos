import 'package:flutter/material.dart';
import 'listaContatos.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: 'Lista de contatos',
      home: ListaContatos(),
      debugShowCheckedModeBanner: false,
    )
  );
}