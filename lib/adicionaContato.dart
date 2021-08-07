import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Contato.dart';

class AdicionaContato extends StatefulWidget {
  const AdicionaContato({Key? key}) : super(key: key);

  @override
  _AdicionaContatoState createState() => _AdicionaContatoState();
}

class _AdicionaContatoState extends State<AdicionaContato> {
  String? nome, telefone, email;
  int? idade;
  bool favorito = false;

  bool _saveButton = false;

  void _showSaveButton(){
      setState(() {
        _saveButton = (nome != null && telefone != null && email != null && idade != null
            && nome != '' && telefone != '' && email != '');
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Novo Contato')
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
              onChanged: (value) { nome = value; _showSaveButton(); },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefone',
              ),
              onChanged: (value) { telefone = value; _showSaveButton(); },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (value) { email = value; _showSaveButton(); },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Idade',
              ),
              onChanged: (value) { idade = int.tryParse(value); _showSaveButton(); },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Checkbox(
                  value: favorito,
                  onChanged: (value) => setState(() => favorito = value!),
                ),
                Text('Adicionar contato aos favoritos'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Visibility(
        visible: _saveButton,
        child: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () => Navigator.pop(context, Contato(nome!, telefone!, email!, idade!, favorito)),
        ),
      ),
    );
  }
}
