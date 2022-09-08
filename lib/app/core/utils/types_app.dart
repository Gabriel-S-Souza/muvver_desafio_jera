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