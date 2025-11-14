class Software {
  final String id;
  final String nome;
  final String categoria;
  final String descricao;
  final double preco;
  final String logoUrl;
  final String fabricante;
  final String emailSuporte;
  final String requisitosSistema;
  final List<String> formasPagamento;
  final String licenseKey;

  const Software({
  required this.id,
  required this.nome,
  required this.categoria,
  required this.descricao,
  required this.preco,
  required this.logoUrl,
  required this.fabricante,
  required this.emailSuporte,
  required this.requisitosSistema,
  required this.formasPagamento,
  required this.licenseKey
  });
}
