import 'package:flutter/material.dart';
import 'listaContatos.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Lista de contatos',
      home: ListaContatos(),
      debugShowCheckedModeBanner: false,
    )
  );
}