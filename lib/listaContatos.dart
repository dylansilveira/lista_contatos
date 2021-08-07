import 'package:flutter/material.dart';
import 'Contato.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> meusContatos = [];

  _ListaContatosState(){
    meusContatos.add(Contato('Dylan Silveira', '(51) 99999-9999', 'dylan@email.com', 19, true));
    meusContatos.add(Contato('Fulana da Silva', '(51) 99999-9999', 'fulana@email.com', 19, false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Contatos'),
      ),
      body: ListView.builder(
          itemCount: meusContatos.length,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                title: Text(meusContatos[i].nome),
                subtitle: Text(meusContatos[i].telefone),
                leading: Column(
                  children: [
                    Icon(Icons.person),
                    meusContatos[i].isHomem ? Icon(Icons.male) : Icon(Icons.female),
                  ],
                ),
                onTap: () => null,
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => null,
                ),
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => null,
      ),
    );
  }
}