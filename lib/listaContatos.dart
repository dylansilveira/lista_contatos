import 'package:flutter/material.dart';
import 'Contato.dart';
import 'adicionaContato.dart';
import 'detalhesContato.dart';

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
                    if (meusContatos[i].favorito) Icon(Icons.star, color: Color.fromRGBO(230, 185, 80, 1)),
                  ],
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesContato(meusContatos[i]))),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Ainda não é possível editar contatos!'),
                            action: SnackBarAction(
                              label: 'Fechar',
                              onPressed: () => null
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => setState(() => meusContatos.removeAt(i)),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Contato? novoContato = await Navigator.push(context, MaterialPageRoute(builder: (_) => AdicionaContato()));
          if (novoContato != null)
            setState(() => meusContatos.add(novoContato));
        },
      ),
    );
  }
}