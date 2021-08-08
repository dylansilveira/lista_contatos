class Contato{
  String nome, telefone, email;
  int idade;
  bool favorito;

  String data = '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';

  Contato(this.nome, this.telefone, this.email, this.idade, this.favorito);
}