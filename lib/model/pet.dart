import 'dart:core';

import 'package:hive/hive.dart';

part 'pet.g.dart';

@HiveType(typeId: 1)
class Pet {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int age;

  @HiveField(2)
  final String breed;

  @HiveField(3)
  final String colour;

  @HiveField(4)
  final String size;
  
  @HiveField(5)
  final String picture;
  
  @HiveField(6)
  final String price;


  Pet({
    required this.name,
    required this.age,
    required this.breed,
    required this.colour,
    required this.size,
    required this.picture,
    required this.price,

  });
}
