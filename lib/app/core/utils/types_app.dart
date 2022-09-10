enum MeansOfTransport {
  car(name: 'Carro'),
  plane(name: 'Avião'),
  truck(name: 'Truck'),
  van(name: 'Van'),
  motorcycle(name: 'Moto'),
  bike(name: 'Bicicleta'),
  train(name: 'Trem'),
  bus(name: 'Ônibus'),
  boat(name: 'Embarcação');

  const MeansOfTransport({required this.name});

  final String name;
}

enum Volume {
  envelope(name: 'Envelope'),
  book(name: 'Livro'),
  shoeBox(name: 'Caixa de Sapato'),
  schoolbag(name: 'Mochila'),
  bigSuitcase(name: 'Mala Grande'),
  bigBox(name: 'Caixa grande');

  const Volume({required this.name});

  final String name;
}