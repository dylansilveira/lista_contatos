import 'package:flutter/material.dart';
import 'Contato.dart';

class DetalhesContato extends StatelessWidget {
  const DetalhesContato(this.contatoDetalhado, {Key? key}) : super(key: key);

  final Contato contatoDetalhado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes de ${contatoDetalhado.nome.split(' ')[0]}'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Card(
                  child: Icon(Icons.person, size: 350),
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 13,
                endIndent: 13,
                color: Colors.teal,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Informações gerais:', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 18),
                    Text(' Nome: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('${contatoDetalhado.nome}',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, size: 18),
                    Text(' Idade: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('${contatoDetalhado.idade}',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 13,
                endIndent: 13,
                color: Colors.teal,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Informações de contato:', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.phone, size: 18),
                    Text(' Telefone: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('${contatoDetalhado.telefone}',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.email, size: 18),
                    Text(' E-mail: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('${contatoDetalhado.email}',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 13,
                endIndent: 13,
                color: Colors.teal,
              ),

              Padding(
                padding: EdgeInsets.all(40),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Fechar', style: TextStyle(fontSize: 18)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'Este contato foi salvo em ${contatoDetalhado.data}',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
