import 'package:proj/models/package_model.dart';

class Producer {
  String name;
  String logo;
  String description;
  String distance;
  List<Package> packages;

  Producer({
    this.name,
    this.description,
    this.logo,
    this.distance,
    this.packages
  });

  factory Producer.fromJson(Map<String, dynamic> parsedJson){
    print('veio aqui');
    // Prosseguir daqui, não sei o motivo de não funcionar
    return Producer(
      name: parsedJson['name'],
      logo : parsedJson['logo'],
      description : parsedJson['description'],
      distance : parsedJson['distance'],
      packages : parsedJson['packages'],
    );
  }
}