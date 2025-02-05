class Pokemon {
  int id;
  String image;
  String name;
  List<String> types;
  String color;
  int height;
  int weight;
  List<String> abilities;
  String species;
  int hatchCounter;
  List<String> eggGroups;
  String gender;

  Pokemon({
    required this.id,
    required this.image,
    required this.name,
    required this.types,
    required this.color,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.species,
    required this.hatchCounter,
    required this.eggGroups,
    required this.gender
  });

}